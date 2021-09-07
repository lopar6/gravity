import 'package:flame/components.dart';
import 'package:flame/image_composition.dart';
import 'package:gravity/widgets/level.dart';

class Rocket extends PositionComponent with HasGameRef<Level> {
  bool explode = false;
  int rocketSize = 20;
  Vector2 _gameSize = Vector2(0, 0);
  bool visible = true;

  @override
  void render(Canvas canvas) {
    if (visible) {
      super.render(canvas);
    } // If not visible none of the children will be rendered
  }
  // Rocket(Vector2 gameSize) {}

  // @override
  // void update(double dt) {
  //   super.update(dt);
  //   y += dt * SPEED;
  // }

  // @override
  // bool destroy() {
  //   if (explode) {
  //     return true;
  //   }
  //   if (y == null || _gameSize == null) {
  //     return false;
  //   }
  //   final destroy = y >= _gameSize.y + rocketSize / 2;
  //   if (destroy) {
  //     // gameRef.points -= 20;
  //     // FlameAudio.play('miss.mp3');
  //   }
  //   return destroy;
  // }

}
