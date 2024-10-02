import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/splash_model.dart';
part 'splash_state.dart';

final splashNotifier = StateNotifierProvider<SplashNotifier, SplashState>(
    (ref) => SplashNotifier(SplashState()),
);


class SplashNotifier extends StateNotifier<SplashState> {
  SplashNotifier(SplashState state) : super(state);
}