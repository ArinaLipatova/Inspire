// ignore_for_file: must_be_immutable

part of 'special_thoughts_one_bloc.dart';

/// Represents the state of SpecialThoughtsOne in the application.
class SpecialThoughtsOneState extends Equatable {
  SpecialThoughtsOneState({this.specialThoughtsOneModelObj});

  SpecialThoughtsOneModel? specialThoughtsOneModelObj;

  @override
  List<Object?> get props => [
        specialThoughtsOneModelObj,
      ];
  SpecialThoughtsOneState copyWith(
      {SpecialThoughtsOneModel? specialThoughtsOneModelObj}) {
    return SpecialThoughtsOneState(
      specialThoughtsOneModelObj:
          specialThoughtsOneModelObj ?? this.specialThoughtsOneModelObj,
    );
  }
}
