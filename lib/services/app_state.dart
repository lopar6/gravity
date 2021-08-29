import 'package:gravity/config.dart';
import 'package:rxdart/rxdart.dart';

class AppState {
  BehaviorSubject<int> tapCount = BehaviorSubject.seeded(0);

  static bool _instanceInitialized = false;
  static late AppState _instance;
  static AppState get instance {
    if (!_instanceInitialized) {
      _instance = AppState();
      _instanceInitialized = true;
    }
    return _instance;
  }

  late Config config;
}
