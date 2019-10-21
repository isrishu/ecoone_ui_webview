import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ecoone_ui_webview/ecoone_ui_webview.dart';

void main() {
  const MethodChannel channel = MethodChannel('ecoone_ui_webview');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await EcooneUiWebview.platformVersion, '42');
  });
}
