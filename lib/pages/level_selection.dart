import 'package:flutter/material.dart';

import 'package:gravity/pages/level_page.dart';

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
              // todo change this to load the actual selected
              MaterialPageRoute(builder: (context) => LevelPage(0)),
            );
          },
          child: Text("Level #1"))
    ]);
  }
}
