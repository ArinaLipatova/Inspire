// ignore_for_file: must_be_immutable

part of 'special_thoughts_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SpecialThoughtsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SpecialThoughtsOneEvent extends Equatable {}

/// Event that is dispatched when the SpecialThoughtsOne widget is first created.
class SpecialThoughtsOneInitialEvent extends SpecialThoughtsOneEvent {
  @override
  List<Object?> get props => [];
}
