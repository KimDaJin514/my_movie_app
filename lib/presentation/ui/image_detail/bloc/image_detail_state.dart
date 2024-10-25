part of 'image_detail_bloc.dart';

@freezed
class ImageDetailState with _$ImageDetailState {
  factory ImageDetailState({
    required int selectedIndex,
    required bool isShowInfoView,
  }) = _ImageDetailState;

  factory ImageDetailState.init() => ImageDetailState(
        selectedIndex: 0,
        isShowInfoView: true,
      );
}
