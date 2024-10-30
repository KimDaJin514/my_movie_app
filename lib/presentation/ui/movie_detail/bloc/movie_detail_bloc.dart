import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/presentation/presentation.dart';

part 'movie_detail_bloc.freezed.dart';
part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final GetMovieDetailUseCase _getMovieDetailUseCase;
  final GetPeopleCreditsUseCase _getMovieCreditsUseCase;
  final GetMovieGalleryUseCase _getMovieGalleryUseCase;
  final GetMovieVideoUseCase _getMovieVideoUseCase;
  final GetSimilarMoviesUseCase _getSimilarMoviesUseCase;
  final GetRecommendationMoviesUseCase _getRecommendationMoviesUseCase;

  MovieDetailBloc(
    this._getMovieDetailUseCase,
    this._getMovieCreditsUseCase,
    this._getMovieGalleryUseCase,
    this._getMovieVideoUseCase,
    this._getSimilarMoviesUseCase,
    this._getRecommendationMoviesUseCase,
  ) : super(MovieDetailState.init()) {
    on<GetMovieDetail>(
      (event, emit) => _getMovieDetail(
        emit: emit,
        movieId: event.movieId,
      ),
    );
    on<GetMovieCredits>(
      (event, emit) => _getMovieCredits(
        emit: emit,
        movieId: event.movieId,
      ),
    );
    on<GetMovieGallery>(
      (event, emit) => _getMovieGallery(
        emit: emit,
        movieId: event.movieId
      ),
    );
    on<GetMovieVideos>(
      (event, emit) => _getMovieVideos(
        emit: emit,
        movieId: event.movieId
      ),
    );
    on<GetSimilarMovies>(
      (event, emit) => _getSimilarMovies(
        emit: emit,
        isRefresh: event.isRefresh,
        movieId: event.movieId,
      ),
    );
    on<GetRecommendationMovies>(
      (event, emit) => _getRecommendationMovies(
        emit: emit,
        isRefresh: event.isRefresh,
        movieId: event.movieId,
      ),
    );
  }

  _getMovieDetail({
    required Emitter<MovieDetailState> emit,
    required int movieId,
  }) async {
    final MovieVo movieDetail = (await _getMovieDetailUseCase(
      movieId: movieId,
      language: 'ko-KR',
    ))
        .mapper();

    emit(
      state.copyWith(movieVo: movieDetail),
    );
  }

  _getMovieCredits({
    required Emitter<MovieDetailState> emit,
    required int movieId,
  }) async {
    final CreditsVo movieCredits = (await _getMovieCreditsUseCase(
      movieId: movieId,
      language: 'ko-KR',
    ))
        .mapper();

    emit(
      state.copyWith(
        director: movieCredits.crew.firstWhere(
          (personVo) => personVo.job == 'Director',
        ),
        casts: movieCredits.cast
            .where(
              (personVo) => personVo.department == 'Acting',
            )
            .toList(),
      ),
    );
  }

  _getMovieGallery({
    required Emitter<MovieDetailState> emit,
    required int movieId,
  }) async {
    final GalleryVo galleryVo = (await _getMovieGalleryUseCase(
      movieId: movieId,
      language: 'ko-KR',
      includeImageLanguage: 'ko',
    ))
        .mapper();

    final List<PosterVo> posters = [];
    posters.addAll(galleryVo.backdrops);
    posters.addAll(galleryVo.posters);

    emit(state.copyWith(gallery: posters));
  }

  _getMovieVideos({
    required Emitter<MovieDetailState> emit,
    required int movieId,
  }) async {
    final VideoListDto videoListDto = await _getMovieVideoUseCase(
      movieId: movieId,
      language: 'ko-KR',
    );

    final List<VideoVo> videos = videoListDto.results
        .mapper()
        .where((element) => element.site == 'YouTube')
        .toList();
    emit(state.copyWith(videos: videos));
  }

  _getSimilarMovies({
    required Emitter<MovieDetailState> emit,
    required bool isRefresh,
    required int movieId,
  }) async {
    if (isRefresh) {
      emit(state.copyWith(similarMoviePaging: PagingVo.init()));
    }
    if (state.similarMoviePaging.page ==
        state.similarMoviePaging.totalPages ||
        state.similarMoviePaging.isLoading) {
      return;
    }

    emit(
      state.copyWith(
        similarMoviePaging: state.similarMoviePaging.copyWith(
          isLoading: true,
        ) as PagingVo<MovieVo>,
      ),
    );

    final List<MovieVo> movies = [];
    movies.addAll(state.similarMoviePaging.results as List<MovieVo>);

    final PagingDto<MovieDto> similarMoviePaging =
    await _getSimilarMoviesUseCase(
      movieId: movieId,
      page: state.similarMoviePaging.page,
      language: 'ko-KR',
    );

    movies.addAll((similarMoviePaging.results as List<MovieDto>)
        .mapper()
        .where((movie) => !movie.genreIds.contains(10749)));

    emit(
      state.copyWith(
        similarMoviePaging: PagingVo(
          page: state.similarMoviePaging.page + 1,
          totalPages: state.similarMoviePaging.totalPages,
          totalResults: state.similarMoviePaging.totalResults,
          results: movies,
          isLoading: false,
        ),
      ),
    );
  }

  _getRecommendationMovies({
    required Emitter<MovieDetailState> emit,
    required bool isRefresh,
    required int movieId,
  }) async {
    if (isRefresh) {
      emit(state.copyWith(recommendationMoviePaging: PagingVo.init()));
    }
    if (state.recommendationMoviePaging.page ==
        state.recommendationMoviePaging.totalPages ||
        state.recommendationMoviePaging.isLoading) {
      return;
    }

    emit(
      state.copyWith(
        recommendationMoviePaging: state.recommendationMoviePaging.copyWith(
          isLoading: true,
        ) as PagingVo<MovieVo>,
      ),
    );

    final List<MovieVo> movies = [];
    movies.addAll(state.recommendationMoviePaging.results as List<MovieVo>);

    final PagingDto<MovieDto> recommendationMoviePaging =
    await _getRecommendationMoviesUseCase(
      movieId: movieId,
      page: state.recommendationMoviePaging.page,
      language: 'ko-KR',
    );

    movies.addAll((recommendationMoviePaging.results as List<MovieDto>)
        .mapper()
        .where((movie) => !movie.genreIds.contains(10749)));

    emit(
      state.copyWith(
        recommendationMoviePaging: PagingVo(
          page: state.recommendationMoviePaging.page + 1,
          totalPages: state.recommendationMoviePaging.totalPages,
          totalResults: state.recommendationMoviePaging.totalResults,
          results: movies,
          isLoading: false,
        ),
      ),
    );
  }
}
