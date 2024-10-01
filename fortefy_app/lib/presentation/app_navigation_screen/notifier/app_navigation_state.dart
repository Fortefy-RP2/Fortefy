part of 'app_navigation_notifier.dart';

/// Represents the state of AppNavigation in the application.
class AppNavigationState extends Equatable {
  AppNavigationState({this.appNavigationModelObj});

  AppNavigationModel? appNavigationModelObj;

  @override
  List<Object?> get props => [appNavigationModelObj];

  AppNavigationState copyWith({AppNavigationModel? appNavigationModelObj}) {
    return AppNavigationState(
      appNavigationModelObj: appNavigationModelObj ?? this.appNavigationModelObj,
    );
  }
}
