import 'package:flutter/material.dart';
import 'package:gravity/services/app_state.dart';
import 'package:gravity/widgets/tap_count.dart';

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
        actions: [
          TapCount(),
        ],
      ),
      body: Column(
        children: [
          Center(child: Text(_title)),
          TapCount(),
          Center(
            child: ElevatedButton(
              onPressed: () {
                var tapCount = AppState.instance.tapCount;
                print('TapCount: ${tapCount.value + 1}');
                tapCount.add(tapCount.value + 1);
              },
              child: Text('Tap Me'),
            ),
          ),
        ],
      ),
    );
  }
}
