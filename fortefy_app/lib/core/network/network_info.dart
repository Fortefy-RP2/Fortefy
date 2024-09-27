import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fortefy_v2/main.dart';

abstract class NetworkInfo {
  Future<bool> isConnected();

  Future<ConnectivityResult> get ConnectivityResult;

  Stream<ConnectivityResult> get onConnectivityChanged;
}

class NetworkInfo implements NetworkInfo {
  Connectivity connectivity;

  static final NetworkInfo _networkInfo = NetworkInfo.internal(Connectivity());

  factory NetworkInfo() {
    return _networkInfo;
  }

  NetworkInfo._internal(this.connectivity) {
    connectivity = this.connectivity;
  }

  @override
  Future<bool> isConnected() async {
    final result = await connectivity.checkConnectivity();
    if(result != ConnectivityResult.none) {
      return true;
    }
    return false;
  }

  @override
  Future<ConnectivityResult> get ConnectivityResult async {
    return connectivity.checkConnectivity();
  }

  @override
  Stream<ConnectivityResult> get onConnectivityChanged =>
    connectivity.onConnectivityChanged;
}

abstract class Failure {} 

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NetworkFailure extends Failure {}

class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}

class NoInternetException implements Exception { 
  late String _message;

  NoInternetException([String message = 'NoInternetException Ocurred']) {
    if(globalMessengerKey.currentState != null) {
      globalMessengerKey.currentState!
        .showSnackBar(SnackBar(content: Text(message)));
    }
    this._message = message;
  }

  @override
  String toString() {
    return _message;
  }
}