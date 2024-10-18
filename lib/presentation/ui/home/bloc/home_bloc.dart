import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/model/movie_dto.dart';
import 'package:my_movie_app/domain/model/paging/paging_dto.dart';
import 'package:my_movie_app/domain/use_case/get_now_playing_movies_use_case.dart';
import 'package:my_movie_app/domain/use_case/get_popular_movies_use_case.dart';
import 'package:my_movie_app/presentation/model/movie_vo.dart';
import 'package:my_movie_app/presentation/model/paging/paging_vo.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetPopularMoviesUseCase _getPopularMoviesUseCase;
  final GetNowPlayingMoviesUseCase _getNowPlayingMoviesUseCase;

  HomeBloc(
    this._getPopularMoviesUseCase,
    this._getNowPlayingMoviesUseCase,
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
  }

  _getPopularMovies({
    required Emitter<HomeState> emit,
  }) async {
    final PagingDto<MovieDto> popularMoviePaging = await _getPopularMoviesUseCase(
      page: 1,
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

    final PagingDto<MovieDto> nowPlayingMoviePaging = await _getNowPlayingMoviesUseCase(
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
}
