import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:gravity/widgets/components/player.dart';

class GravityGame extends BaseGame with PanDetector {
  double creationTimer = 0.0;

  @override
  Future<void> onLoad() async {
    await images.load('simpleSpace_tilesheet@2.png');

    final spriteSheet = SpriteSheet.fromColumnsAndRows(
        image: images.fromCache('simpleSpace_tilesheet@2.png'),
        columns: 8,
        rows: 6);

    Player player = Player(
      sprite: spriteSheet.getSpriteById(9),
      size: Vector2(64, 64),
      position: viewport.canvasSize / 2,
    );
    add(player);

    player.anchor = Anchor.bottomCenter;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
  }

  @override
  void update(double dt) {
    creationTimer += dt;
    if (creationTimer >= 1) {
      creationTimer = 0;
      // add(Rocket());
    }
    super.update(dt);
  }
}
