import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:inspire_ver/presentation/special_thoughts_two_screen/models/special_thoughts_two_model.dart';
part 'special_thoughts_two_event.dart';
part 'special_thoughts_two_state.dart';

/// A bloc that manages the state of a SpecialThoughtsTwo according to the event that is dispatched to it.
class SpecialThoughtsTwoBloc
    extends Bloc<SpecialThoughtsTwoEvent, SpecialThoughtsTwoState> {
  SpecialThoughtsTwoBloc(SpecialThoughtsTwoState initialState)
      : super(initialState) {
    on<SpecialThoughtsTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SpecialThoughtsTwoInitialEvent event,
    Emitter<SpecialThoughtsTwoState> emit,
  ) async {
    emit(state.copyWith(typeTheTextController: TextEditingController()));
  }
}
