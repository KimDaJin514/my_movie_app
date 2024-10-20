import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/model/movie_dto.dart';
import 'package:my_movie_app/domain/model/paging/paging_dto.dart';
import 'package:my_movie_app/domain/use_case/get_now_playing_movies_use_case.dart';
import 'package:my_movie_app/domain/use_case/get_popular_movies_use_case.dart';
import 'package:my_movie_app/domain/use_case/get_top_rated_movies_use_case.dart';
import 'package:my_movie_app/domain/use_case/get_upcoming_movies_use_case.dart';
import 'package:my_movie_app/presentation/model/movie_vo.dart';
import 'package:my_movie_app/presentation/model/paging/paging_vo.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetPopularMoviesUseCase _getPopularMoviesUseCase;
  final GetNowPlayingMoviesUseCase _getNowPlayingMoviesUseCase;
  final GetTopRatedMoviesUseCase _getTopRatedMoviesUseCase;
  final GetUpcomingMoviesUseCase _getUpcomingMoviesUseCase;

  HomeBloc(
    this._getPopularMoviesUseCase,
    this._getNowPlayingMoviesUseCase,
    this._getTopRatedMoviesUseCase,
    this._getUpcomingMoviesUseCase,
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
    on<GetUpcomingMovies>(
      (event, emit) => _getUpcomingMovies(
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

  _getUpcomingMovies({
    required Emitter<HomeState> emit,
    required bool isRefresh,
  }) async {
    if (isRefresh) {
      emit(state.copyWith(upcomingMoviePaging: PagingVo.init()));
    }
    if (state.upcomingMoviePaging.page ==
            state.upcomingMoviePaging.totalPages ||
        state.upcomingMoviePaging.isLoading) {
      return;
    }

    emit(
      state.copyWith(
        upcomingMoviePaging: state.upcomingMoviePaging.copyWith(
          isLoading: true,
        ) as PagingVo<MovieVo>,
      ),
    );

    final List<MovieVo> movies = [];
    movies.addAll(state.upcomingMoviePaging.results as List<MovieVo>);

    final PagingDto<MovieDto> upcomingMoviePaging =
        await _getUpcomingMoviesUseCase(
      page: state.upcomingMoviePaging.page,
      language: 'ko-KR',
    );

    movies.addAll((upcomingMoviePaging.results as List<MovieDto>).mapper());

    emit(
      state.copyWith(
        upcomingMoviePaging: PagingVo(
          page: state.upcomingMoviePaging.page + 1,
          totalPages: state.upcomingMoviePaging.totalPages,
          totalResults: state.upcomingMoviePaging.totalResults,
          results: movies,
          isLoading: false,
        ),
      ),
    );
  }
}
