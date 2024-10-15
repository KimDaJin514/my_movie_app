import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/model/movie_dto.dart';
import 'package:my_movie_app/domain/model/paging/paging_dto.dart';
import 'package:my_movie_app/domain/use_case/get_popular_movies_use_case.dart';
import 'package:my_movie_app/presentation/model/movie_vo.dart';
import 'package:my_movie_app/presentation/model/paging/paging_vo.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetPopularMoviesUseCase _getPopularMoviesUseCase;

  HomeBloc(
    this._getPopularMoviesUseCase,
  ) : super(HomeState.init()) {
    on<GetPopularMovies>(
      (event, emit) => _getPopularMovies(
        emit: emit,
        isRefresh: event.isRefresh,
      ),
    );
  }

  _getPopularMovies({
    required Emitter<HomeState> emit,
    required bool isRefresh,
  }) async {
    if (isRefresh) {
      emit(state.copyWith(moviePaging: PagingVo.init()));
    }
    if (state.moviePaging.page == state.moviePaging.totalResults ||
        state.moviePaging.isLoading) {
      return;
    }

    emit(
      state.copyWith(
        moviePaging: state.moviePaging.copyWith(
          isLoading: true,
        ) as PagingVo<MovieVo>,
      ),
    );

    final List<MovieVo> movies = [];
    movies.addAll(state.moviePaging.results as List<MovieVo>);

    final PagingDto<MovieDto> moviePaging = await _getPopularMoviesUseCase(
      page: state.moviePaging.page,
      language: 'ko-KR',
    );

    movies.addAll((moviePaging.results as List<MovieDto>).mapper());

    emit(
      state.copyWith(
        moviePaging: PagingVo(
          page: state.moviePaging.page + 1,
          totalPages: state.moviePaging.totalPages,
          totalResults: state.moviePaging.totalResults,
          results: movies,
          isLoading: false,
        ),
      ),
    );
  }
}
