import 'dart:io';

/// Determines the device platform.
///
/// Returns the device platform as a string (iOS, Android, or Unknown).
String getDevicePlatform() {
  if (Platform.isIOS) {
    return 'iOS';
  } else if (Platform.isAndroid) {
    return 'Android';
  } else {
    return 'Unknown';
  }
}
