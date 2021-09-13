import 'package:flame/components.dart';
import 'package:flame/image_composition.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flame_forge2d/sprite_body_component.dart';
import 'package:flutter/gestures.dart';
import 'package:forge2d/src/dynamics/body.dart';
import 'package:gravity/widgets/game.dart';

class Player extends SpriteBodyComponent {
  Vector2 _moveDirection = Vector2.zero();
  Vector2 _initialPosition = Vector2.zero();
  Vector2 position = Vector2.zero();
  Anchor _anchor;
  World _world;
  double _speed = 0;
  late BodyDef bodyDef;

  Player({
    required Sprite sprite,
    required Vector2 position,
    required Vector2 size,
    required World world,
    required double angle,
  })   : _initialPosition = position.clone(),
        _anchor = Anchor.center,
        _world = world,
        super(sprite, size) {
    // bodyDef is how forge2d knows about the attributes
    bodyDef = BodyDef();
    bodyDef.position = position;
    bodyDef.angle = angle;
  }

  @override
  void update(double dt) {
    this.position += _moveDirection.normalized() * _speed * dt;
    print(position);
    super.update(dt);
  }

  void setMoveDirection(Vector2 newMoveDirection) {
    _moveDirection = newMoveDirection;
  }

  set speed(double speed) {
    _speed = speed;
  }

  void reset() {
    _speed = 0;
    position = _initialPosition;
  }

  @override
  Body createBody() {
    return Body(bodyDef, world);
  }
}
