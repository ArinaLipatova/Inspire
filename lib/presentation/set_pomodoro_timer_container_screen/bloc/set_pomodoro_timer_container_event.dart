// ignore_for_file: must_be_immutable

part of 'set_pomodoro_timer_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetPomodoroTimerContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetPomodoroTimerContainerEvent extends Equatable {}

/// Event that is dispatched when the SetPomodoroTimerContainer widget is first created.
class SetPomodoroTimerContainerInitialEvent
    extends SetPomodoroTimerContainerEvent {
  @override
  List<Object?> get props => [];
}
