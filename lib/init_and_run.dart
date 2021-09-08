import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:gravity/app.dart';
import 'package:gravity/config.dart';
import 'package:gravity/services/app_state.dart';
import 'package:gravity/widgets/game.dart';

void initAndRun(Config config) {
  // binds flutter and forces fullscreen
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();

  AppState.instance.config = config;
  // Level game = Level();
  runApp(GameWidget(game: GravityGame()));
}
