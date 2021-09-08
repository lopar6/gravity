import 'package:flame/components.dart';
import 'package:flame/gestures.dart';

class Planet extends SpriteComponent {
  Planet({
    Sprite? sprite,
    Vector2? position,
    Vector2? size,
  }) : super(sprite: sprite, position: position, size: size);
}
