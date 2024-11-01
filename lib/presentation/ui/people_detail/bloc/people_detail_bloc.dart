import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/presentation/model/person/movie_credit_vo.dart';
import 'package:my_movie_app/presentation/presentation.dart';

part 'people_detail_bloc.freezed.dart';
part 'people_detail_event.dart';
part 'people_detail_state.dart';

class PeopleDetailBloc extends Bloc<PeopleDetailEvent, PeopleDetailState> {
  final GetPeopleDetailUseCase _getPeopleDetailUseCase;
  final GetSnsAccountUseCase _getSnsAccountUseCase;
  final GetPersonImageUseCase _getPersonImageUseCase;
  final GetMovieCreditsUseCase _getMovieCreditsUseCase;

  PeopleDetailBloc(
    this._getPeopleDetailUseCase,
    this._getSnsAccountUseCase,
    this._getPersonImageUseCase,
    this._getMovieCreditsUseCase,
  ) : super(PeopleDetailState.init()) {
    on<GetPersonDetail>(
      (event, emit) => _getPersonDetail(emit: emit, id: event.id),
    );
    on<GetSnsAccount>(
      (event, emit) => _getSnsAccount(emit: emit, id: event.id),
    );
    on<GetPersonImages>(
      (event, emit) => _getPersonImages(emit: emit, id: event.id),
    );
    on<GetFilmographyMovies>(
      (event, emit) => _getFilmographyMovies(emit: emit, id: event.id),
    );
  }

  _getPersonDetail({
    required Emitter<PeopleDetailState> emit,
    required int id,
  }) async {
    final personVo = await _getPeopleDetailUseCase(id: id, language: 'ko-KR');

    emit(
      state.copyWith(personVo: personVo.mapper()),
    );
  }

  _getSnsAccount({
    required Emitter<PeopleDetailState> emit,
    required int id,
  }) async {
    final externalIdVo = await _getSnsAccountUseCase(id: id);

    emit(
      state.copyWith(externalIdVo: externalIdVo.mapper()),
    );
  }

  _getPersonImages({
    required Emitter<PeopleDetailState> emit,
    required int id,
  }) async {
    final personVo = await _getPersonImageUseCase(id: id);
    List<PosterVo> profiles = personVo.mapper().profiles;

    if(profiles.isNotEmpty) {
      emit(
        state.copyWith(images: personVo.mapper().profiles.sublist(1)),
      );
    }
  }

  _getFilmographyMovies({
    required Emitter<PeopleDetailState> emit,
    required int id,
  }) async {
    final movieCreditVo = (await _getMovieCreditsUseCase(
      id: id,
      language: 'ko-KR',
    )).mapper();

    emit(
      state.copyWith(movies: movieCreditVo.movies),
    );
  }
}
