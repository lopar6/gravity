import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'package:gravity/widgets/game.dart';
import 'package:gravity/widgets/components/launch_button.dart';

class LevelPage extends StatelessWidget {
  final int _levelNumber;
  final GravityGame game;

  @override
  LevelPage({
    required int levelNumber,
    required GravityGame game,
  })  : _levelNumber = levelNumber,
        this.game = game;

  @override
  Widget build(BuildContext context) {
    return GameWidget(
      game: game,
      initialActiveOverlays: [LaunchButton.ID],
      overlayBuilderMap: {
        LaunchButton.ID: (BuildContext context, GravityGame gameRef) => LaunchButton(gameRef),
      },
    );
  }
}
