import 'package:flutter/material.dart';

import 'package:gravity/pages/level_page.dart';
import 'package:gravity/widgets/game.dart';

class LevelSelection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LevelSelection();
}

class _LevelSelection extends State<LevelSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Select Your level'),
            const Text('\nImplement multiple levels here'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  // todo change this to load the actual selected
                  MaterialPageRoute(
                    builder: (context) => LevelPage(
                      levelNumber: 0,
                      game: GravityGame(),
                    ),
                  ),
                );
              },
              child: const Text("Level #1"),
            ),
          ],
        ),
      ),
    );
  }
}
