import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/presentation/presentation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetPopularMoviesUseCase _getPopularMoviesUseCase;
  final GetNowPlayingMoviesUseCase _getNowPlayingMoviesUseCase;
  final GetTopRatedMoviesUseCase _getTopRatedMoviesUseCase;
  final GetTrendingMoviesUseCase _getTrendingMoviesUseCase;
  final GetTrendingActorsUseCase _getTrendingActorsUseCase;

  HomeBloc(
    this._getPopularMoviesUseCase,
    this._getNowPlayingMoviesUseCase,
    this._getTopRatedMoviesUseCase,
    this._getTrendingMoviesUseCase,
    this._getTrendingActorsUseCase,
  ) : super(HomeState.init()) {
    on<GetPopularMovies>(
      (event, emit) => _getPopularMovies(emit: emit),
    );
    on<GetNowPlayingMovies>(
      (event, emit) => _getNowPlayingMovies(
        emit: emit,
        isRefresh: event.isRefresh,
      ),
    );
    on<GetTopRatedMovies>(
      (event, emit) => _getTopRatedMovies(
        emit: emit,
        isRefresh: event.isRefresh,
      ),
    );
    on<GetTrendingMovies>(
      (event, emit) => _getTrendingMovies(
        emit: emit,
        isRefresh: event.isRefresh,
      ),
    );
    on<GetTrendingActors>(
      (event, emit) => _getTrendingActors(
        emit: emit,
        isRefresh: event.isRefresh,
      ),
    );
  }

  _getPopularMovies({
    required Emitter<HomeState> emit,
  }) async {
    final PagingDto<MovieDto> popularMoviePaging =
        await _getPopularMoviesUseCase(
      page: 2,
      language: 'ko-KR',
    );

    emit(
      state.copyWith(
        popularMovies: popularMoviePaging.results?.mapper() ?? List.empty(),
      ),
    );
  }

  _getNowPlayingMovies({
    required Emitter<HomeState> emit,
    required bool isRefresh,
  }) async {
    if (isRefresh) {
      emit(state.copyWith(nowPlayingMoviePaging: PagingVo.init()));
    }
    if (state.nowPlayingMoviePaging.page ==
            state.nowPlayingMoviePaging.totalPages ||
        state.nowPlayingMoviePaging.isLoading) {
      return;
    }

    emit(
      state.copyWith(
        nowPlayingMoviePaging: state.nowPlayingMoviePaging.copyWith(
          isLoading: true,
        ) as PagingVo<MovieVo>,
      ),
    );

    final List<MovieVo> movies = [];
    movies.addAll(state.nowPlayingMoviePaging.results as List<MovieVo>);

    final PagingDto<MovieDto> nowPlayingMoviePaging =
        await _getNowPlayingMoviesUseCase(
      page: state.nowPlayingMoviePaging.page,
      language: 'ko-KR',
    );

    movies.addAll((nowPlayingMoviePaging.results as List<MovieDto>).mapper());

    emit(
      state.copyWith(
        nowPlayingMoviePaging: PagingVo(
          page: state.nowPlayingMoviePaging.page + 1,
          totalPages: state.nowPlayingMoviePaging.totalPages,
          totalResults: state.nowPlayingMoviePaging.totalResults,
          results: movies,
          isLoading: false,
        ),
      ),
    );
  }

  _getTopRatedMovies({
    required Emitter<HomeState> emit,
    required bool isRefresh,
  }) async {
    if (isRefresh) {
      emit(state.copyWith(topRatedMoviePaging: PagingVo.init()));
    }
    if (state.topRatedMoviePaging.page ==
            state.topRatedMoviePaging.totalPages ||
        state.topRatedMoviePaging.isLoading) {
      return;
    }

    emit(
      state.copyWith(
        topRatedMoviePaging: state.topRatedMoviePaging.copyWith(
          isLoading: true,
        ) as PagingVo<MovieVo>,
      ),
    );

    final List<MovieVo> movies = [];
    movies.addAll(state.topRatedMoviePaging.results as List<MovieVo>);

    final PagingDto<MovieDto> topRatedMoviePaging =
        await _getTopRatedMoviesUseCase(
      page: state.topRatedMoviePaging.page,
      language: 'ko-KR',
    );

    movies.addAll((topRatedMoviePaging.results as List<MovieDto>).mapper());

    emit(
      state.copyWith(
        topRatedMoviePaging: PagingVo(
          page: state.topRatedMoviePaging.page + 1,
          totalPages: state.topRatedMoviePaging.totalPages,
          totalResults: state.topRatedMoviePaging.totalResults,
          results: movies,
          isLoading: false,
        ),
      ),
    );
  }

  _getTrendingMovies({
    required Emitter<HomeState> emit,
    required bool isRefresh,
  }) async {
    if (isRefresh) {
      emit(state.copyWith(trendingMoviePaging: PagingVo.init()));
    }
    if (state.trendingMoviePaging.page ==
            state.trendingMoviePaging.totalPages ||
        state.trendingMoviePaging.isLoading) {
      return;
    }

    emit(
      state.copyWith(
        trendingMoviePaging: state.trendingMoviePaging.copyWith(
          isLoading: true,
        ) as PagingVo<MovieVo>,
      ),
    );

    final List<MovieVo> movies = [];
    movies.addAll(state.trendingMoviePaging.results as List<MovieVo>);

    final PagingDto<MovieDto> trendingMoviePaging =
        await _getTrendingMoviesUseCase(
      language: 'ko-KR',
      timeWindow: 'week',
      page: state.trendingMoviePaging.page,
    );

    movies.addAll((trendingMoviePaging.results as List<MovieDto>).mapper());

    emit(
      state.copyWith(
        trendingMoviePaging: PagingVo(
          page: state.trendingMoviePaging.page + 1,
          totalPages: state.trendingMoviePaging.totalPages,
          totalResults: state.trendingMoviePaging.totalResults,
          results: movies,
          isLoading: false,
        ),
      ),
    );
  }

  _getTrendingActors({
    required Emitter<HomeState> emit,
    required bool isRefresh,
  }) async {
    if (isRefresh) {
      emit(state.copyWith(trendingActorPaging: PagingVo.init()));
    }
    if (state.trendingActorPaging.page ==
            state.trendingActorPaging.totalPages ||
        state.trendingActorPaging.isLoading) {
      return;
    }

    emit(
      state.copyWith(
        trendingActorPaging: state.trendingActorPaging.copyWith(
          isLoading: true,
        ) as PagingVo<PersonVo>,
      ),
    );

    final List<PersonVo> actors = [];
    actors.addAll(state.trendingActorPaging.results as List<PersonVo>);

    final PagingDto<PersonDto> trendingActorPaging =
        await _getTrendingActorsUseCase(
      language: 'ko-KR',
      timeWindow: 'week',
      page: state.trendingActorPaging.page,
    );

    actors.addAll((trendingActorPaging.results as List<PersonDto>)
        .mapper()
        .where((personVo) =>
            !personVo.isAdult &&
            personVo.department == 'Acting' &&
            !personVo.name.startsWith('민') &&
            personVo.gender == 2));

    emit(
      state.copyWith(
        trendingActorPaging: PagingVo(
          page: state.trendingActorPaging.page + 1,
          totalPages: state.trendingActorPaging.totalPages,
          totalResults: state.trendingActorPaging.totalResults,
          results: actors,
          isLoading: false,
        ),
      ),
    );
  }
}
