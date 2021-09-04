import 'package:flame/game.dart';
import 'package:flutter/material.dart';

// could I just import the files I need?
// or, I could make a package of all levels
import 'package:gravity/widgets/levels/level_1.dart';

class LevelPage extends StatefulWidget {
  int levelNumber = -1;
  LevelPage(levelNumber);

  @override
  State<StatefulWidget> createState() => _LevelPage();
}

class _LevelPage extends State<LevelPage> {
  @override
  Widget build(BuildContext context) {
    dynamic game = Level1();
    return game.widget;
  }
}
