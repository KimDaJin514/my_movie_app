import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie_app/config/config.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/get_it.dart';
import 'package:my_movie_app/presentation/model/movie/video_vo.dart';
import 'package:my_movie_app/presentation/presentation.dart';
import 'package:my_movie_app/presentation/router/app_router.gr.dart';
import 'package:my_movie_app/presentation/ui/movie_detail/bloc/movie_detail_bloc.dart';
import 'package:my_movie_app/presentation/ui/movie_detail/cast_item_view.dart';

part 'movie_basic_info_view.dart';
part 'cast_info_view.dart';
part 'gallery_view.dart';
part 'video_view.dart';

@RoutePage()
class MovieDetailScreen extends StatelessWidget {
  final int movieId;

  const MovieDetailScreen({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieDetailBloc(
        locator<GetMovieDetailUseCase>(),
        locator<GetMovieCreditsUseCase>(),
        locator<GetMovieGalleryUseCase>(),
        locator<GetMovieVideoUseCase>(),
      )
        ..add(MovieDetailEvent.getMovieDetail(movieId: movieId))
        ..add(MovieDetailEvent.getMovieCredits(movieId: movieId))
        ..add(MovieDetailEvent.getMovieGallery(movieId: movieId))
        ..add(MovieDetailEvent.getMovieVideos(movieId: movieId)),
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
            MovieBasicInfoView(
              movie: context.select(
                (MovieDetailBloc bloc) => bloc.state.movieVo,
              ),
            ),
            const SizedBox(height: 50),
            CastInfoView(
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
            const SizedBox(height: 50),
            VideoView(
              videos: context.select(
                (MovieDetailBloc bloc) => bloc.state.videos,
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
      backgroundColor: _isAppBarCollapsed? gray300 : gray950,
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
          widthConfig: SizeConfig.instance.original,
          height: 270,
          width: MediaQuery.of(context).size.width,
          hasDim: true,
        ),
      ),
    );
  }
}
