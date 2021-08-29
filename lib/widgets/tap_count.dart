import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gravity/services/app_state.dart';

class TapCount extends StatefulWidget {
  @override
  _TapCountState createState() => _TapCountState();
}

class _TapCountState extends State<TapCount> {
  late int _tapCount = AppState.instance.tapCount.value;
  late StreamSubscription<int> _tapCountSubscription;

  @override
  void initState() {
    _tapCountSubscription = AppState.instance.tapCount.listen((int value) {
      _tapCount = value;
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _tapCountSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('$_tapCount'),
    );
  }
}
