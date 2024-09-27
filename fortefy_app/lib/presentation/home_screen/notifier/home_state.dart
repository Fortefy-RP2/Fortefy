part of 'home_notifier.dart';

class HomeState extends Equatable {
  HomeState({this.searchController, this.homeModeObj});

  TextEditingController? searchController;

  HomeModel? homeModelObj;

  @override
  List<Object> get props => [searchController, homeModelObj];
  HomeState copyWith({
    TextEditingController? searchController,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      searchController: searchController ?? this.searchController,
      homeModeObj: homeModelObj ?? this.homeModelObj,
    );
  }
}