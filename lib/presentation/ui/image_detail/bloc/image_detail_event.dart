part of 'image_detail_bloc.dart';

@freezed
class ImageDetailEvent with _$ImageDetailEvent {
  const factory ImageDetailEvent.changeSelectedImageIndex(int index) =
      ChangeSelectedImageIndex;

  const factory ImageDetailEvent.onImageClick(bool isShowInfoView) =
      OnImageClick;
}
