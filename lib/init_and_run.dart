import 'package:flutter/material.dart';
import 'package:gravity/app.dart';
import 'package:gravity/config.dart';
import 'package:gravity/services/app_state.dart';

void initAndRun(Config config) {
  AppState.instance.config = config;
  runApp(App());
}
