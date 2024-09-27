part of search_notifier.dart;

/// Represents the state of Search in the application.
// ignore for file: must be immutable
class SearchState extends Equatable {
  SearchState({
    this.regionSelectionInputController,
    this.serviceTypeInputController,
    this.radioGroup = "",
    this.searchModelObj,
  });

  TextEditingController? regionSelectionInputController;
  TextEditingController? serviceTypeInputController;
  String radioGroup;
  SearchModel? searchModelObj;

  @override
  List<Object?> get props =>
      [
        regionSelectionInputController,
        serviceTypeInputController,
        radioGroup,
        searchModelObj
      ];

  SearchState copyWith({
    TextEditingController? regionSelectionInputController,
    TextEditingController? serviceTypeInputController,
    String? radioGroup,
    SearchModel? searchModelObj,
  }) {
    return SearchState(
      regionSelectionInputController:
      regionSelectionInputController ?? this.regionSelectionInputController,
      serviceTypeInputController:
      serviceTypeInputController ?? this.serviceTypeInputController,
      radioGroup: radioGroup ?? this.radioGroup,
      searchModelObj: searchModelObj ?? this.searchModelObj,
    );
  }
}