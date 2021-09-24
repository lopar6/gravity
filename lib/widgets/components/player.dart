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
  Anchor _anchor;
  World _world;
  double _angle;
  double _speed = 10;

  Player({
    required Sprite sprite,
    required Vector2 position,
    required Vector2 size,
    required World world,
    required double angle,
  })   : _initialPosition = position.clone(),
        _anchor = Anchor.center,
        _world = world,
        _angle = angle,
        // todo replace this
        _moveDirection = Vector2(0, 1000000),
        super(sprite, size);

  @override
  void update(double dt) {
    // this.bodyDef.position += _moveDirection.normalized() * _speed * dt;
    super.update(dt);
  }

  void setMoveDirection(Vector2 newMoveDirection) {
    _moveDirection = newMoveDirection;
  }

  set speed(double speed) {
    _speed = speed;
  }

  void launch() {
    // option 1: could be good for a mechanic where speed compounds.
    // maybe add boost control?
    // body.applyForce(Vector2(0, 10000000000000000000));
    // option 2: starting speed is seeded?
    body.applyLinearImpulse(_moveDirection);
  }

  @override
  Body createBody() {
    // todo override this to copy the shape of the ship so that collisions work properly
    // https://www.youtube.com/watch?v=vosd_x-4rPc  7min
    final bodyDef = BodyDef();
    bodyDef.type = BodyType.dynamic;
    bodyDef.position = _initialPosition;
    bodyDef.angle = _angle;
    return world.createBody(bodyDef);
  }
}
