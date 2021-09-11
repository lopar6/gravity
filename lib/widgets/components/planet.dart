import 'package:flame/components.dart';
import 'package:flame/gestures.dart';

class Planet extends SpriteComponent {
  late double? _mass;

  Planet({Sprite? sprite, Vector2? position, Vector2? size, double? mass})
      : super(sprite: sprite, position: position, size: size) {
    _mass = mass;
  }
}
