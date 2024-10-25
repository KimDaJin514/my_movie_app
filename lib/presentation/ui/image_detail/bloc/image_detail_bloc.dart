import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_detail_bloc.freezed.dart';
part 'image_detail_event.dart';
part 'image_detail_state.dart';

class ImageDetailBloc extends Bloc<ImageDetailEvent, ImageDetailState> {
  ImageDetailBloc() : super(ImageDetailState.init()) {
    on<ChangeSelectedImageIndex>(
      (event, emit) => emit(
        state.copyWith(selectedIndex: event.index),
      ),
    );
    on<OnImageClick>((event, emit) {
      emit(
        state.copyWith(isShowInfoView: event.isShowInfoView),
      );
    });
  }
}
