// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object data.xml

import 'dart:io';
import 'package:dbus/dbus.dart';

class RuOmpDeviceinfoFeatures extends DBusRemoteObject {
  RuOmpDeviceinfoFeatures(DBusClient client, String destination, DBusObjectPath path) : super(client, name: destination, path: path);

  /// Invokes ru.omp.deviceinfo.Features.getBatteryChargePercentage()
  Future<int> callgetBatteryChargePercentage({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    var result = await callMethod('ru.omp.deviceinfo.Features', 'getBatteryChargePercentage', [], replySignature: DBusSignature('u'), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asUint32();
  }
}
