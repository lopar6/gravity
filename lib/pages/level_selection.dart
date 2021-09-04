import 'package:flutter/material.dart';

import 'package:gravity/pages/level.dart';

class LevelSelection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LevelSelection();
}

class _LevelSelection extends State<LevelSelection> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text('Select Your level'),
      Text('\nImplement multiple levels here'),
      ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Level()),
            );
          },
          child: Text("Level #1"))
    ]);
  }
}
