import 'package:flutter/material.dart';

import 'package:gravity/pages/level_selection.dart';

class UniverseSelection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UniverseSelection();
}

class _UniverseSelection extends State<UniverseSelection> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text('Select Your Universe'),
      Text('\nImplement multiple universes here'),
      ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LevelSelection()),
            );
          },
          child: Text("Universe #1"))
    ]);
  }
}
