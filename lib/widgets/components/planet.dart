import 'package:flame/components.dart';
import 'package:flame/gestures.dart';

class Planet extends SpriteComponent {
  double _mass;

  Planet({
    required Sprite sprite,
    required Vector2 position,
    required Vector2 size,
    required double mass,
  })  : _mass = mass,
        super(sprite: sprite, position: position, size: size) {
    anchor = Anchor.center;
  }
}
