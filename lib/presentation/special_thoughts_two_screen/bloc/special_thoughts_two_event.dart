// ignore_for_file: must_be_immutable

part of 'special_thoughts_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SpecialThoughtsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SpecialThoughtsTwoEvent extends Equatable {}

/// Event that is dispatched when the SpecialThoughtsTwo widget is first created.
class SpecialThoughtsTwoInitialEvent extends SpecialThoughtsTwoEvent {
  @override
  List<Object?> get props => [];
}
