
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterHiPayAdapter {

  static const MethodChannel _channel = MethodChannel('flutter_hi_pay_adapter');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

}
