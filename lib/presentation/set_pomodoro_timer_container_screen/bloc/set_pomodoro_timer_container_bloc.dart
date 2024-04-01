import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:inspire_ver/presentation/set_pomodoro_timer_container_screen/models/set_pomodoro_timer_container_model.dart';
part 'set_pomodoro_timer_container_event.dart';
part 'set_pomodoro_timer_container_state.dart';



/// A bloc that manages the state of a SetPomodoroTimerContainer according to the event that is dispatched to it.
class SetPomodoroTimerContainerBloc extends Bloc<SetPomodoroTimerContainerEvent,
    SetPomodoroTimerContainerState> {
  SetPomodoroTimerContainerBloc(SetPomodoroTimerContainerState initialState)
      : super(initialState) {
    on<SetPomodoroTimerContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SetPomodoroTimerContainerInitialEvent event,
    Emitter<SetPomodoroTimerContainerState> emit,
  ) async {
    // TODO: implement Actions
  }
}
