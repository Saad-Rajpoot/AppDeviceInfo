library app_device_info;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppDeviceInfo {
  final PackageInfo _packageInfo;
  final DeviceInfoPlugin _deviceInfoPlugin = DeviceInfoPlugin();
  AndroidDeviceInfo? _androidInfo;
  IosDeviceInfo? _iosInfo;

  AppDeviceInfo._(this._packageInfo);

  static Future<AppDeviceInfo> getInstance() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return AppDeviceInfo._(packageInfo);
  }

  Future<void> initDeviceInfo(BuildContext context) async {
    if (_androidInfo == null && _iosInfo == null) {
      if (Theme.of(context).platform == TargetPlatform.android) {
        _androidInfo = await _deviceInfoPlugin.androidInfo;
      } else if (Theme.of(context).platform == TargetPlatform.iOS) {
        _iosInfo = await _deviceInfoPlugin.iosInfo;
      }
    }
  }

  // Package Info getters
  String get appName => _packageInfo.appName;
  String get packageName => _packageInfo.packageName;
  String get version => _packageInfo.version;
  String get buildNumber => _packageInfo.buildNumber;

  // Device Info getters
  String? get androidModel => _androidInfo?.model;
  String? get androidManufacturer => _androidInfo?.manufacturer;
  String? get androidVersion => _androidInfo?.version.release;

  String? get iosModel => _iosInfo?.model;
  String? get iosSystemName => _iosInfo?.systemName;
  String? get iosVersion => _iosInfo?.systemVersion;
}
