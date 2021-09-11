import 'package:flutter/material.dart';
import 'package:gravity/widgets/game.dart';

class LaunchButton extends StatefulWidget {
  static const String ID = 'LaunchButton';
  late GravityGame gameRef;
  LaunchButton(this.gameRef);

  @override
  State<StatefulWidget> createState() {
    print("[Products Manager] createState()");
    return _launchButton();
  }
}

class _launchButton extends State<LaunchButton> {
  late GravityGame _gameRef;
  bool isLaunched = false;

  @override
  void initState() {
    _gameRef = widget.gameRef;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: Icon(
          Icons.play_arrow,
          color: Colors.white,
        ),
        onPressed: () {
          if (isLaunched) {
            _gameRef.softReset();
            isLaunched = false;
          } else {
            _gameRef.launchShip();
            isLaunched = true;
          }
        },
      ),
    );
  }
}
