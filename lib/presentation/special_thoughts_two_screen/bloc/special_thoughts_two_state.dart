// ignore_for_file: must_be_immutable

part of 'special_thoughts_two_bloc.dart';

/// Represents the state of SpecialThoughtsTwo in the application.
class SpecialThoughtsTwoState extends Equatable {
  SpecialThoughtsTwoState({
    this.typeTheTextController,
    this.specialThoughtsTwoModelObj,
  });

  TextEditingController? typeTheTextController;

  SpecialThoughtsTwoModel? specialThoughtsTwoModelObj;

  @override
  List<Object?> get props => [
        typeTheTextController,
        specialThoughtsTwoModelObj,
      ];
  SpecialThoughtsTwoState copyWith({
    TextEditingController? typeTheTextController,
    SpecialThoughtsTwoModel? specialThoughtsTwoModelObj,
  }) {
    return SpecialThoughtsTwoState(
      typeTheTextController:
          typeTheTextController ?? this.typeTheTextController,
      specialThoughtsTwoModelObj:
          specialThoughtsTwoModelObj ?? this.specialThoughtsTwoModelObj,
    );
  }
}
