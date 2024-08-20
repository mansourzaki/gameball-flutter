import 'package:package_info_plus/package_info_plus.dart';
import 'package:platform_info/platform_info.dart';

/// Creates a map of request headers for API calls.
///
/// Includes essential headers like content type, API key, and user-agent information.
///
/// Arguments:
///   - `ApiKey`: The API key for authentication.
///
/// Returns:
///   A map of request headers.
Map<String, String> getRequestHeaders(String apiKey) {
  return <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
    'ApiKey': apiKey,
    'x-gb-agent':
        'Flutter/${getPckageInfo()?.version}/${Platform.I.operatingSystem}/${Platform.I.version}'
  };
}

/// Retrieves package information asynchronously.
///
/// Fetches package information from the platform and returns it as a `PackageInfo` object.
///
/// Returns:
///   A `PackageInfo` object containing package details, or null if not available yet.
PackageInfo? getPckageInfo() {
  PackageInfo? packageInfo;

  PackageInfo.fromPlatform().then((response) {
    packageInfo = response;
  });

  return packageInfo;
}
