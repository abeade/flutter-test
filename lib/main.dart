import 'routes.dart';
import 'dart:isolate';
import 'package:android_alarm_manager/android_alarm_manager.dart';

void main () async {
  new Routes();
  final int helloAlarmID = 0;
  await AndroidAlarmManager.periodic(const Duration(minutes: 1), helloAlarmID, printHello);
}

void printHello() {
  final DateTime now = DateTime.now();
  final int isolateId = Isolate.current.hashCode;
  print("[$now] Hello, world! isolate=$isolateId function='$printHello'");
}
