import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState.init()) {
    on<SelectBottomNavigationItem>(
      (event, emit) => emit(
        state.copyWith(selectedBottomNavigationIndex: event.selectedIndex),
      ),
    );
  }
}
