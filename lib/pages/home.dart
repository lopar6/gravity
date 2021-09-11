import 'package:flutter/material.dart';

import 'package:gravity/pages/universe_selection.dart';
import 'package:gravity/services/app_state.dart';

class HomePage extends StatefulWidget {
  final String initialTitle;

  HomePage({required this.initialTitle});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String _title;

  @override
  void initState() {
    _title = widget.initialTitle;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.initialTitle),
        actions: [],
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UniverseSelection()),
                );
              },
              child: Text('Play'),
            ),
          ),
        ],
      ),
    );
  }
}
