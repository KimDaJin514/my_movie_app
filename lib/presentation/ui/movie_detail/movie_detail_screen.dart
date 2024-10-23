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

part 'movie_basic_info_view.dart';

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
    return Scaffold(
      backgroundColor: gray950,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          _sliverAppBarView(
            movie: context.select((MovieDetailBloc bloc) => bloc.state.movieVo),
          ),
          _sliverBodyView(),
        ],
      ),
    );
  }

  Widget _sliverBodyView() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _movieBasicInfoView(
              movie: context.select(
                (MovieDetailBloc bloc) => bloc.state.movieVo,
              ),
            ),
          ],
        ),
      ),
    );
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
