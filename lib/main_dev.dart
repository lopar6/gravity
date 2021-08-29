import 'package:gravity/config.dart';
import 'package:gravity/init_and_run.dart';

void main() {
  initAndRun(Config(
    apiUrl: 'localhost:8000/',
    debug: true,
  ));
}
