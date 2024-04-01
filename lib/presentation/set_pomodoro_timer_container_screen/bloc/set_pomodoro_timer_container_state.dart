// ignore_for_file: must_be_immutable

part of 'set_pomodoro_timer_container_bloc.dart';

/// Represents the state of SetPomodoroTimerContainer in the application.
class SetPomodoroTimerContainerState extends Equatable {
  SetPomodoroTimerContainerState({this.setPomodoroTimerContainerModelObj});

  SetPomodoroTimerContainerModel? setPomodoroTimerContainerModelObj;

  @override
  List<Object?> get props => [
        setPomodoroTimerContainerModelObj,
      ];
  SetPomodoroTimerContainerState copyWith(
      {SetPomodoroTimerContainerModel? setPomodoroTimerContainerModelObj}) {
    return SetPomodoroTimerContainerState(
      setPomodoroTimerContainerModelObj: setPomodoroTimerContainerModelObj ??
          this.setPomodoroTimerContainerModelObj,
    );
  }
}

