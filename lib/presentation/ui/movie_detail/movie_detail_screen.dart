import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_movie_app/config/assets_config.dart';
import 'package:my_movie_app/config/config.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/get_it.dart';
import 'package:my_movie_app/presentation/presentation.dart';
import 'package:my_movie_app/presentation/router/app_router.gr.dart';
import 'package:my_movie_app/presentation/ui/common/shimmer_widget.dart';
import 'package:my_movie_app/presentation/ui/movie_detail/bloc/movie_detail_bloc.dart';
import 'package:my_movie_app/presentation/ui/movie_detail/component/cast_item_view.dart';
import 'package:my_movie_app/presentation/ui/movie_detail/component/movie_list_item_view.dart';
import 'package:url_launcher/url_launcher.dart';

part 'component/movie_basic_info_view.dart';
part 'component/cast_info_view.dart';
part 'component/video_view.dart';
part 'component/sub_movie_list_view.dart';

@RoutePage()
class MovieDetailScreen extends StatelessWidget {
  final int movieId;

  const MovieDetailScreen({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieDetailBloc(
        locator<GetMovieDetailUseCase>(),
        locator<GetPeopleCreditsUseCase>(),
        locator<GetMovieGalleryUseCase>(),
        locator<GetMovieVideoUseCase>(),
        locator<GetSimilarMoviesUseCase>(),
        locator<GetRecommendationMoviesUseCase>(),
      )
        ..add(MovieDetailEvent.getMovieDetail(movieId: movieId))
        ..add(MovieDetailEvent.getMovieCredits(movieId: movieId))
        ..add(MovieDetailEvent.getMovieGallery(movieId: movieId))
        ..add(MovieDetailEvent.getMovieVideos(movieId: movieId))
        ..add(
          MovieDetailEvent.getSimilarMovies(
            movieId: movieId,
            isRefresh: false,
          ),
        )
        ..add(
          MovieDetailEvent.getRecommendationMovies(
            movieId: movieId,
            isRefresh: false,
          ),
        ),
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
  bool _isVisibleFloatingButton = false;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        _sliverAppBarListener();
        _floatingButtonListener();
      });
  }

  _sliverAppBarListener() {
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
  }

  _floatingButtonListener () {
    if (_scrollController.offset == 0 && _isVisibleFloatingButton) {
      setState(() {
        _isVisibleFloatingButton = false;
      });
    } else if (_scrollController.offset > 0 && !_isVisibleFloatingButton) {
      setState(() {
        _isVisibleFloatingButton = true;
      });
    }
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
      floatingActionButton: Visibility(
        visible: _isVisibleFloatingButton,
        child: scrollUpFloatingButton(
          onPressed: () {
            _scrollController.animateTo(
              0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
        ),
      ),
      floatingActionButtonLocation: null,
    );
  }

  Widget _sliverBodyView() {
    final MovieDetailBloc movieDetailBloc = context.read();
    final int movieId = movieDetailBloc.state.movieVo.id;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _MovieBasicInfoView(
              movie: context.select(
                (MovieDetailBloc bloc) => bloc.state.movieVo,
              ),
            ),
            const SizedBox(height: 50),
            _CastInfoView(
              director: context.select(
                (MovieDetailBloc bloc) => bloc.state.director,
              ),
              casts: context.select(
                (MovieDetailBloc bloc) => bloc.state.casts,
              ),
            ),
            const SizedBox(height: 50),
            GalleryView(
              gallery: context.select(
                (MovieDetailBloc bloc) => bloc.state.gallery,
              ),
            ),
            _VideoView(
              videos: context.select(
                (MovieDetailBloc bloc) => bloc.state.videos,
              ),
            ),
            _SubMovieListView(
              title: '비슷한 영화',
              movieId: movieId,
              moviePaging: context.select(
                (MovieDetailBloc bloc) => bloc.state.similarMoviePaging,
              ),
            ),
            _SubMovieListView(
              title: '추천 영화',
              movieId: movieId,
              moviePaging: context.select(
                (MovieDetailBloc bloc) => bloc.state.recommendationMoviePaging,
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
      backgroundColor: _isAppBarCollapsed ? gray300 : gray950,
      toolbarHeight: _topViewPadding + 54,
      pinned: true,
      primary: false,
      automaticallyImplyLeading: false,
      expandedHeight: 270,
      leading: _backIconView(),
      title: _collapsedTitleView(movie: movie),
      flexibleSpace: _flexiblePosterView(movie: movie),
    );
  }

  Widget _backIconView() {
    return GestureDetector(
      onTap: context.maybePop,
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: EdgeInsets.only(top: _topViewPadding),
        child: Icon(
          Icons.arrow_back_ios,
          color: _isAppBarCollapsed ? gray950 : white,
        ),
      ),
    );
  }

  Widget _flexiblePosterView({required MovieVo movie}) {
    return FlexibleSpaceBar(
      background: PosterView(
        imagePath: movie.backdropPath,
        widthConfig: SizeConfig.instance.original,
        height: 270,
        width: MediaQuery.of(context).size.width,
        hasDim: true,
      ),
    );
  }

  Widget _collapsedTitleView({required MovieVo movie}) {
    return Visibility(
      visible: _isAppBarCollapsed,
      child: Padding(
        padding: EdgeInsets.only(top: _topViewPadding),
        child: Text(
          movie.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: h1.copyWith(color: gray950),
        ),
      ),
    );
  }
}
