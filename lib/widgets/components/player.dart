import 'package:flame/components.dart';
import 'package:flame/image_composition.dart';
import 'package:gravity/widgets/game.dart';

class Player extends SpriteComponent {
  Vector2 _moveDirection = Vector2.zero();
  Vector2 _initialPosition = Vector2.zero();
  double _speed = 0;

  Player({
    required Sprite sprite,
    required Vector2 position,
    required Vector2 size,
  })  : _initialPosition = position.clone(),
        super(sprite: sprite, position: position, size: size) {
          anchor = Anchor.center;
        }

  @override
  void update(double dt) {
    super.update(dt);

    this.position += _moveDirection.normalized() * _speed * dt;
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
}
