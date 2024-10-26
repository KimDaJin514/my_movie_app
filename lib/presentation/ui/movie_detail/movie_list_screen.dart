import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/get_it.dart';
import 'package:my_movie_app/presentation/presentation.dart';
import 'package:my_movie_app/presentation/ui/movie_detail/bloc/movie_detail_bloc.dart';
import 'package:my_movie_app/presentation/ui/movie_detail/component/movie_list_item_view.dart';

@RoutePage()
class MovieListScreen extends StatelessWidget {
  final int movieId;
  final String appBarTitle;

  const MovieListScreen({
    super.key,
    required this.movieId,
    required this.appBarTitle,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieDetailBloc(
        locator<GetMovieDetailUseCase>(),
        locator<GetMovieCreditsUseCase>(),
        locator<GetMovieGalleryUseCase>(),
        locator<GetMovieVideoUseCase>(),
        locator<GetSimilarMoviesUseCase>(),
        locator<GetRecommendationMoviesUseCase>(),
      )
        ..add(MovieDetailEvent.getMovieDetail(movieId: movieId))
        ..add(
          MovieDetailEvent.getSimilarMovies(
            movieId: movieId,
            isRefresh: false,
          ),
        ),
      child: BlocBuilder<MovieDetailBloc, MovieDetailState>(
        builder: (context, state) {
          return _MovieListBodyView(
            movieId: state.movieVo.id,
            appBarTitle: appBarTitle,
            moviePaging: state.similarMoviePaging,
          );
        },
      ),
    );
  }
}

class _MovieListBodyView extends StatefulWidget {
  final PagingVo<MovieVo> moviePaging;
  final String appBarTitle;
  final int movieId;

  const _MovieListBodyView({
    required this.moviePaging,
    required this.appBarTitle,
    required this.movieId,
  });

  @override
  State<_MovieListBodyView> createState() => _MovieListBodyViewState();
}

class _MovieListBodyViewState extends State<_MovieListBodyView> {
  late ScrollController _scrollController;
  bool _isVisibleFloatingButton = false;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        _floatingButtonListener();
        _loadMoreListener();
      });
  }

  _loadMoreListener() {
    if (_scrollController.isScrollEnd(offset: 300) &&
        !widget.moviePaging.isLoading) {
      context.read<MovieDetailBloc>().add(
            MovieDetailEvent.getSimilarMovies(
              isRefresh: false,
              movieId: widget.movieId,
            ),
          );
    }
  }

  _floatingButtonListener() {
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
    return Scaffold(
      backgroundColor: gray950,
      appBar: AppBar(
        backgroundColor: gray300,
        title: Text(
          widget.appBarTitle,
          style: h1.copyWith(color: gray950),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: GridView.builder(
          controller: _scrollController,
          shrinkWrap: true,
          itemCount: widget.moviePaging.results.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.55,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final MovieVo movieVo = widget.moviePaging.results[index];
            return MovieListItemView(movieVo: movieVo);
          },
        ),
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
}
