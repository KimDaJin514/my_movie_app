part of 'people_detail_bloc.dart';

@freezed
class PeopleDetailEvent with _$PeopleDetailEvent {
  const factory PeopleDetailEvent.getPersonDetail({
    required int id,
  }) = GetPersonDetail;

  const factory PeopleDetailEvent.getSnsAccount({
    required int id,
  }) = GetSnsAccount;

  const factory PeopleDetailEvent.getPersonImages({
    required int id,
  }) = GetPersonImages;
}
