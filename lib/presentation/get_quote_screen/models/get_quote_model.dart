// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [get_quote_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class GetQuoteModel extends Equatable {
  GetQuoteModel() {}

  GetQuoteModel copyWith() {
    return GetQuoteModel();
  }

  @override
  List<Object?> get props => [];
}
