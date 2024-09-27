import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../core/app_export.dart';
import '../models/home_model.dart';
import 'home_state.dart';

final homeNotifier = StateNotifierProvider<homeNotifier, HomeState>(
  (ref) => HomeNotifier(HomeState(
    searchController: TextEditingController(),
  )),
);

class HomeNotifier extends StateNotifier<HomeState>{
  HomeNotifier(HomeState state) : super(state);
}