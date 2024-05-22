import 'package:flutter/material.dart';
import 'package:app_device_info/app_device_info.dart';

void main() => runApp(const AppDeviceInfoPackage());

class AppDeviceInfoPackage extends StatelessWidget {
  const AppDeviceInfoPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Device Info'),
        ),
        body: Center(
          child: FutureBuilder<AppDeviceInfo>(
            future: AppDeviceInfo.getInstance(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              }
              final info = snapshot.data!;
              return FutureBuilder(
                future: info.initDeviceInfo(context),
                builder: (context, snapshot) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('App Name: ${info.appName}'),
                      Text('Package Name: ${info.packageName}'),
                      Text('Version: ${info.version}'),
                      Text('Build Number: ${info.buildNumber}'),
                      if (Theme.of(context).platform ==
                          TargetPlatform.android) ...[
                        Text('Android Model: ${info.androidModel}'),
                        Text(
                            'Android Manufacturer: ${info.androidManufacturer}'),
                        Text('Android Version: ${info.androidVersion}'),
                      ] else if (Theme.of(context).platform ==
                          TargetPlatform.iOS) ...[
                        Text('iOS Model: ${info.iosModel}'),
                        Text('iOS System Name: ${info.iosSystemName}'),
                        Text('iOS Version: ${info.iosVersion}'),
                      ],
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
