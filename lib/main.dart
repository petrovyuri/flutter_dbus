import 'package:dbus/dbus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dbus/data.dart';

void main() async {
  final client = DBusClient.session();
  final features = RuOmpDeviceinfoFeatures(
    client,
    'ru.omp.deviceinfo',
    DBusObjectPath('/ru/omp/deviceinfo/Features'),
  );
  final percent = await features.callgetBatteryChargePercentage();
  runApp(MaterialApp(
      home: Scaffold(
          body: Center(
    child: Text(
      percent.toString(),
    ),
  ))));
}
