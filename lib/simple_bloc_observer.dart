import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class simpleBlocObserver implements BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {}

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {}

  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint("change = $change");
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint("close = $bloc");
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint("create = $bloc");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {}
}
