import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:gravity/app.dart';
import 'package:gravity/config.dart';
import 'package:gravity/pages/home.dart';
import 'package:gravity/pages/level_page.dart';
import 'package:gravity/services/app_state.dart';
import 'package:gravity/widgets/game.dart';

void initAndRun(Config config) {
  // binds flutter and forces fullscreen
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();

  AppState.instance.config = config;

  //! temp to adjust gameplay
  // runApp(LevelPage(
  //   levelNumber: 0,
  //   game: GravityGame(),
  // ));

  //! use this for normal functionality
  runApp(App());
}
