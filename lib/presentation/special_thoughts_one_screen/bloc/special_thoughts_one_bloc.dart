import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:inspire_ver/presentation/special_thoughts_one_screen/models/special_thoughts_one_model.dart';
part 'special_thoughts_one_event.dart';
part 'special_thoughts_one_state.dart';

/// A bloc that manages the state of a SpecialThoughtsOne according to the event that is dispatched to it.
class SpecialThoughtsOneBloc
    extends Bloc<SpecialThoughtsOneEvent, SpecialThoughtsOneState> {
  SpecialThoughtsOneBloc(SpecialThoughtsOneState initialState)
      : super(initialState) {
    on<SpecialThoughtsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SpecialThoughtsOneInitialEvent event,
    Emitter<SpecialThoughtsOneState> emit,
  ) async {}
}
