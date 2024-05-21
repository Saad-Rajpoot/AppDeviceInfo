# AppDeviceInfo

`AppDeviceInfo` is a Flutter library that simplifies the process of retrieving essential application and device information. This package allows developers to easily access key details about their app and the device it’s running on, making it useful for various purposes such as analytics, debugging, and enhancing user experience.


## Features

- Retrieve application information like app name, package name, version, and build number.
- Retrieve device information for both Android and iOS platforms.


## Getting started

To start using `AppDeviceInfo`, follow these steps:

1. **Add dependencies:**

   Add the following dependencies to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     flutter:
       sdk: flutter
     app_device_info: ^0.0.1

Then, run flutter pub get to fetch the new dependencies.


## Usage

1. **Initialize the package:**

    final appDeviceInfo = await AppDeviceInfo.getInstance();

2. **Initialize device information:**

    await appDeviceInfo.initDeviceInfo(context);

3. **Retrieve app information:**

    String appName = appDeviceInfo.appName;
    String packageName = appDeviceInfo.packageName;
    String version = appDeviceInfo.version;
    String buildNumber = appDeviceInfo.buildNumber;

4. **Retrieve device information:**

    if (Theme.of(context).platform == TargetPlatform.android) {
        String? androidModel = appDeviceInfo.androidModel;
        String? androidManufacturer = appDeviceInfo.androidManufacturer;
        String? androidVersion = appDeviceInfo.androidVersion;
    } else if (Theme.of(context).platform == TargetPlatform.iOS) {
        String? iosModel = appDeviceInfo.iosModel;
        String? iosSystemName = appDeviceInfo.iosSystemName;
        String? iosVersion = appDeviceInfo.iosVersion;
    }


## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
