import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_hi_pay_adapter/flutter_hi_pay_adapter.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_hi_pay_adapter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterHiPayAdapter.platformVersion, '42');
  });
}
