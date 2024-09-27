import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../core/app_export.dart';
import '../models/search_model.dart';
part 'search_state.dart';

final searchNotifier = StateNotifierProvider<SearchNotifier, SearchState>(
      (ref) => SearchNotifier(SearchState(
    regionSelectionInputController: TextEditingController(),
    serviceTypeInputController: TextEditingController(),
    radioGroup: "",
  )),
);

/// A notifier that manages the state of a Search according to the event that is dispatched to it.
class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier(SearchState state) : super(state);

  void changeRadioButton(String value) {
    state = state.copyWith(radioGroup: value);
  }
}