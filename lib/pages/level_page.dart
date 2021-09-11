import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'package:gravity/widgets/game.dart';
import 'package:gravity/widgets/components/launch_button.dart';

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
    return GameWidget(
      game: game,
      initialActiveOverlays: [LaunchButton.ID],
      overlayBuilderMap: {
        LaunchButton.ID: (BuildContext context, GravityGame gameRef) =>
            LaunchButton(gameRef)
      },
    );
  }
}
