import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/use_case/get_movie_detail_use_case.dart';
import 'package:my_movie_app/presentation/model/movie/movie_vo.dart';

part 'movie_detail_bloc.freezed.dart';
part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final GetMovieDetailUseCase _getMovieDetailUseCase;

  MovieDetailBloc(
    this._getMovieDetailUseCase,
  ) : super(MovieDetailState.init()) {
    on<MovieDetailEvent>(
      (event, emit) => _getMovieDetail(
        emit: emit,
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
}
