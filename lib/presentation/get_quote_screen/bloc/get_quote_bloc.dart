import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:inspire_ver/presentation/get_quote_screen/models/get_quote_model.dart';
part 'get_quote_event.dart';
part 'get_quote_state.dart';

/// A bloc that manages the state of a GetQuote according to the event that is dispatched to it.
class GetQuoteBloc extends Bloc<GetQuoteEvent, GetQuoteState> {
  GetQuoteBloc(GetQuoteState initialState) : super(initialState) {
    on<GetQuoteInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GetQuoteInitialEvent event,
    Emitter<GetQuoteState> emit,
  ) async {}
}
