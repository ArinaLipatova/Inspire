// ignore_for_file: must_be_immutable

part of 'get_quote_bloc.dart';

/// Represents the state of GetQuote in the application.
class GetQuoteState extends Equatable {
  GetQuoteState({this.getQuoteModelObj});

  GetQuoteModel? getQuoteModelObj;

  @override
  List<Object?> get props => [
        getQuoteModelObj,
      ];
  GetQuoteState copyWith({GetQuoteModel? getQuoteModelObj}) {
    return GetQuoteState(
      getQuoteModelObj: getQuoteModelObj ?? this.getQuoteModelObj,
    );
  }
}
