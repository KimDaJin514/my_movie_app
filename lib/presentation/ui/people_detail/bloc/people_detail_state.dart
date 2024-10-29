part of 'people_detail_bloc.dart';

@freezed
class PeopleDetailState with _$PeopleDetailState {
  factory PeopleDetailState({
    required PersonVo personVo,
    required ExternalIdVo externalIdVo,
    required List<PosterVo> images,
  }) = _PeopleDetailState;

  factory PeopleDetailState.init() => PeopleDetailState(
        personVo: PersonVo.init(),
        externalIdVo: ExternalIdVo.init(),
        images: List.empty(),
      );
}
