// import 'package:flutter_test/flutter_test.dart';
// import 'package:app_device_info/app_device_info.dart';
//
// void main() {
//   test('AppDeviceInfo should return package and device info', () async {
//     final info = await AppDeviceInfo.getInstance();
//     await info.initDeviceInfo();
//
//     expect(info.appName, isNotNull);
//     expect(info.packageName, isNotNull);
//     expect(info.version, isNotNull);
//     expect(info.buildNumber, isNotNull);
//
//     expect(info.androidModel, isNotNull);
//     expect(info.androidManufacturer, isNotNull);
//     expect(info.androidVersion, isNotNull);
//
//     expect(info.iosModel, isNotNull);
//     expect(info.iosSystemName, isNotNull);
//     expect(info.iosVersion, isNotNull);
//   });
// }


import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_device_info/app_device_info.dart';

void main() {
  testWidgets('AppDeviceInfo should return package and device info', (WidgetTester tester) async {
    await tester.runAsync(() async {
      final info = await AppDeviceInfo.getInstance();

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              // Use the context provided by the Builder widget
              info.initDeviceInfo(context);
              return Container(); // Return any widget here, doesn't affect the test
            },
          ),
        ),
      );

      // Wait for the initialization to complete
      await tester.pump();

      expect(info.appName, isNotNull);
      expect(info.packageName, isNotNull);
      expect(info.version, isNotNull);
      expect(info.buildNumber, isNotNull);

      expect(info.androidModel, isNotNull);
      expect(info.androidManufacturer, isNotNull);
      expect(info.androidVersion, isNotNull);

      expect(info.iosModel, isNotNull);
      expect(info.iosSystemName, isNotNull);
      expect(info.iosVersion, isNotNull);
    });
  });
}
