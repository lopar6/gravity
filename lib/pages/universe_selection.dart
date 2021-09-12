import 'package:flutter/material.dart';

import 'package:gravity/pages/level_selection.dart';

class UniverseSelection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UniverseSelection();
}

class _UniverseSelection extends State<UniverseSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Select Your Universe'),
            const Text('\nImplement multiple universes here'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LevelSelection()),
                  );
                },
                child: const Text("Universe #1"))
          ],
        ),
      ),
    );
  }
}
