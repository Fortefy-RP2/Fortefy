part of 'splash_notifier.dart';




class SplashState extends Equatable {
  SplashState({this.splashModelObj});

  SplashModel? splashModelObj;

  @override
  List<Object?> get props => [splashModelObj];
  SplashState copyWith({SplashModel? splashModelObj}) {
    return SplashState(
      splashModelObj: splashModelObj ?? this.splashModelObj,
    );
  }
}