import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/presentation/presentation.dart';

part 'movie_detail_bloc.freezed.dart';
part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final GetMovieDetailUseCase _getMovieDetailUseCase;
  final GetMovieCreditsUseCase _getMovieCreditsUseCase;

  MovieDetailBloc(
    this._getMovieDetailUseCase,
    this._getMovieCreditsUseCase,
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
}
