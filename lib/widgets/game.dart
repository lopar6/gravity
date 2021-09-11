import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:gravity/widgets/components/planet.dart';
import 'package:gravity/widgets/components/player.dart';

class GravityGame extends BaseGame with PanDetector {
  double creationTimer = 0.0;
  Vector2 _pointerStartPosition = Vector2.zero();
  Vector2 _pointerCurrentPosition = Vector2.zero();
  bool _isDragging = false;
  late Player player;
  late Planet planet;

  @override
  Future<void> onLoad() async {
    await images.load('simpleSpace_tilesheet@2.png');

    final spriteSheet = SpriteSheet.fromColumnsAndRows(
        image: images.fromCache('simpleSpace_tilesheet@2.png'),
        columns: 8,
        rows: 6);

    player = Player(
      sprite: spriteSheet.getSpriteById(9),
      size: Vector2(64, 64),
      position: Vector2(viewport.canvasSize.x / 2, viewport.canvasSize.y - 80),
    );

    planet = Planet(
      sprite: spriteSheet.getSpriteById(24),
      size: Vector2(128, 128),
      position: viewport.canvasSize / 2,
    );

    add(planet);
    add(player);
    player.anchor = Anchor.bottomCenter;
    planet.anchor = Anchor.topCenter;

    // todo(here) add getting JSON values for ship launch direct, starting planets and more...
  }

  void launchShip() {
    player.setMoveDirection(Vector2(0, -1));
    player.setSpeed(150);
  }

  void softReset() {
    player.reset();
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
  }

  @override
  void update(double dt) {
    creationTimer += dt;
    super.update(dt);
  }

  @override
  void onPanStart(DragStartInfo info) {
    _pointerStartPosition = info.eventPosition.global;
    print("onPanStart");
    _isDragging = true;
    if (_pointerStartPosition == planet.position) {}
  }

  @override
  void onPanEnd(DragEndInfo info) {}

  @override
  void onPanUpdate(DragUpdateInfo info) {
    _pointerCurrentPosition = info.eventPosition.global;
    print("onPanUpdate");
    if (_isDragging) {
      planet.position = _pointerCurrentPosition;
    }
  }
}
