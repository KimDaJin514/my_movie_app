part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  factory MainState({
    required int selectedBottomNavigationIndex,
  }) = _MainState;

  factory MainState.init() => MainState(
        selectedBottomNavigationIndex: 0,
      );
}
