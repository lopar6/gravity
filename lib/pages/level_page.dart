import 'package:flutter/material.dart';

// could I just import the files I need?
// or, I could make a package of all levels
import 'package:gravity/widgets/game.dart';

class LevelPage extends StatefulWidget {
  final int intitialLevelNumber = -1;
  LevelPage(intitialLevelNumber);

  @override
  State<StatefulWidget> createState() => _LevelPage();
}

class _LevelPage extends State<LevelPage> {
  @override
  Widget build(BuildContext context) {
    return Text("temp text");
  }
}
