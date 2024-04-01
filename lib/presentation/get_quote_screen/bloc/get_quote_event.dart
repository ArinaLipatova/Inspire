// ignore_for_file: must_be_immutable

part of 'get_quote_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GetQuote widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GetQuoteEvent extends Equatable {}

/// Event that is dispatched when the GetQuote widget is first created.
class GetQuoteInitialEvent extends GetQuoteEvent {
  @override
  List<Object?> get props => [];
}
