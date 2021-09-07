import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:gravity/widgets/components/rocket.dart';

class Level extends BaseGame {
  double creationTimer = 0.0;

  @override
  void render(Canvas canvas) {
    super.render(canvas);
  }

  @override
  void update(double dt) {
    creationTimer += dt;
    if (creationTimer >= 1) {
      creationTimer = 0;
      add(Rocket());
    }
    super.update(dt);
  }
}
