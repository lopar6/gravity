import 'package:flame/game.dart';
import 'package:flutter/material.dart';

// could I just import the files I need?
// or, I could make a package of all levels
import 'package:gravity/widgets/game.dart';

class LevelPage extends StatelessWidget {
  int _levelNumber = 0;
  late GravityGame game;

  @override
  LevelPage(int levelNumber) {
    _levelNumber = levelNumber;
    game = GravityGame();
  }

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
