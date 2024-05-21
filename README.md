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

    ```dart
    final appDeviceInfo = await AppDeviceInfo.getInstance();

2. **Initialize device information:**

    ```dart
    await appDeviceInfo.initDeviceInfo(context);

3. **Retrieve app information:**

    ```dart
    String appName = appDeviceInfo.appName;
    String packageName = appDeviceInfo.packageName;
    String version = appDeviceInfo.version;
    String buildNumber = appDeviceInfo.buildNumber;

4. **Retrieve device information:**

    ```dart
    if (Theme.of(context).platform == TargetPlatform.android) {
        String? androidModel = appDeviceInfo.androidModel;
        String? androidManufacturer = appDeviceInfo.androidManufacturer;
        String? androidVersion = appDeviceInfo.androidVersion;
    } else if (Theme.of(context).platform == TargetPlatform.iOS) {
        String? iosModel = appDeviceInfo.iosModel;
        String? iosSystemName = appDeviceInfo.iosSystemName;
        String? iosVersion = appDeviceInfo.iosVersion;
    }


## Additional Information

For more information about the `AppDeviceInfo` package, visit the [GitHub repository](https://github.com/Saad-Rajpoot/AppDeviceInfo). You can contribute to the package by submitting bug reports, feature requests, or pull requests through the repository's [issue tracker](https://github.com/Saad-Rajpoot/AppDeviceInfo/issues).

We welcome contributions from the community to improve and enhance the functionality of this package. Please refer to the CONTRIBUTING.md file in the repository for guidelines on how to contribute.

If you encounter any issues or have questions about using the package, feel free to open an issue on GitHub. Our team will do our best to address your concerns and provide support.

