import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie_app/config/config.dart';
import 'package:my_movie_app/domain/use_case/get_movie_detail_use_case.dart';
import 'package:my_movie_app/get_it.dart';
import 'package:my_movie_app/presentation/common/expandable_text_view.dart';
import 'package:my_movie_app/presentation/common/poster_view.dart';
import 'package:my_movie_app/presentation/model/genre_vo.dart';
import 'package:my_movie_app/presentation/model/movie_vo.dart';
import 'package:my_movie_app/presentation/style/colors.dart';
import 'package:my_movie_app/presentation/style/fonts.dart';
import 'package:my_movie_app/presentation/ui/movie_detail/bloc/movie_detail_bloc.dart';
import 'package:my_movie_app/presentation/util/date_time_util.dart';
import 'package:my_movie_app/presentation/util/int_extension.dart';

@RoutePage()
class MovieDetailScreen extends StatelessWidget {
  final int movieId;

  const MovieDetailScreen({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieDetailBloc(
        locator<GetMovieDetailUseCase>(),
      )..add(MovieDetailEvent.getMovieDetail(movieId: movieId)),
      child: const _MovieDetailView(),
    );
  }
}

class _MovieDetailView extends StatefulWidget {
  const _MovieDetailView();

  @override
  State<_MovieDetailView> createState() => _MovieDetailViewState();
}

class _MovieDetailViewState extends State<_MovieDetailView> {
  late ScrollController _scrollController;
  late double _topViewPadding;
  bool _isAppBarCollapsed = false;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.offset >= (200 - _topViewPadding) &&
            !_isAppBarCollapsed) {
          setState(() {
            _isAppBarCollapsed = true;
          });
        } else if (_scrollController.offset < (200 - _topViewPadding) &&
            _isAppBarCollapsed) {
          setState(() {
            _isAppBarCollapsed = false;
          });
        }
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _topViewPadding = MediaQuery.of(context).viewPadding.top;
    return BlocSelector<MovieDetailBloc, MovieDetailState, MovieVo>(
      selector: (state) => state.movieVo,
      builder: (context, movie) {
        return Scaffold(
          backgroundColor: gray950,
          body: CustomScrollView(
            controller: _scrollController,
            slivers: [
              _sliverAppBarView(movie: movie),
              _sliverBodyView(movie: movie),
            ],
          ),
        );
      },
    );
  }

  Widget _sliverBodyView({required MovieVo movie}) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _basicInfoView(movie: movie),
          ],
        ),
      ),
    );
  }

  Widget _basicInfoView({required MovieVo movie}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              movie.title,
              style: display3.copyWith(color: white),
            ),
            Row(
              children: [
                const Icon(Icons.star, color: yellow500, size: 22),
                const SizedBox(width: 3),
                Text(
                  movie.voteAverage.toStringAsFixed(1),
                  style: subtitle2.copyWith(color: white),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Text(
                '${movie.releaseDate.getYearFromString()} '
                '· ${_countryText(countries: movie.originCountry)} '
                '· ${_genreText(genres: movie.genres)}',
                style: h1.copyWith(color: gray400),
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
        Visibility(
          visible: movie.tagline != '',
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              '"${movie.tagline}"',
              style: display1.copyWith(
                color: white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        _overviewTextView(overview: movie.overview),
        _detailInfoView(movie: movie),
      ],
    );
  }

  Widget _detailInfoView({required MovieVo movie}) {
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  _detailInfoCell(
                    title: '상영 시간',
                    content: movie.runtime.toHoursAndMinutes(),
                  ),
                  _detailInfoCell(
                    title: '개봉',
                    content: movie.releaseDate,
                  ),
                  _detailInfoCell(
                    title: '장르',
                    content: _genreText(genres: movie.genres),
                  ),
                  _detailInfoCell(
                    title: '제작 국가',
                    content: _countryText(countries: movie.originCountry),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _detailInfoCell({
    required String title,
    required String content,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      color: gray900.withOpacity(0.9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: bodyS.copyWith(color: white),
          ),
          const SizedBox(height: 9),
          Text(
            content,
            style: subtitle3.copyWith(color: white),
          ),
        ],
      ),
    );
  }

  Widget _overviewTextView({required String overview}) {
    return Visibility(
      visible: overview != '',
      child: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: ExpandableTextView(
          text: overview,
          textStyle: bodyM.copyWith(color: white),
          moreTextStyle: h2.copyWith(color: gray400),
          backColor: gray950,
          maxLines: 3,
        ),
      ),
    );
  }

  String _countryText({
    required List<String> countries,
  }) {
    return countries.join('/');
  }

  String _genreText({
    required List<GenreVo> genres,
  }) {
    return genres.map((genreVo) => genreVo.name).join('/');
  }

  Widget _sliverAppBarView({
    required MovieVo movie,
  }) {
    return SliverAppBar(
      backgroundColor: gray100,
      toolbarHeight: _topViewPadding + 54,
      pinned: true,
      primary: false,
      automaticallyImplyLeading: false,
      expandedHeight: 270,
      leading: GestureDetector(
        onTap: context.maybePop,
        behavior: HitTestBehavior.translucent,
        child: Padding(
          padding: EdgeInsets.only(top: _topViewPadding),
          child: Icon(
            Icons.arrow_back_ios,
            color: _isAppBarCollapsed ? gray950 : white,
          ),
        ),
      ),
      title: Visibility(
        visible: _isAppBarCollapsed,
        child: Padding(
          padding: EdgeInsets.only(top: _topViewPadding),
          child: Text(
            movie.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: display1.copyWith(color: gray950),
          ),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: PosterView(
          imagePath: movie.backdropPath,
          widthConfig: SizeConfig.instance.backDropOriginal,
          height: 270,
          width: MediaQuery.of(context).size.width,
          hasDim: true,
        ),
      ),
    );
  }
}
