import 'package:platform_info/platform_info.dart';

import '../../utils/gameball_utils.dart';

/// Creates a map of request headers for API calls.
///
/// Includes essential headers like content type, API key, and user-agent information.
///
/// Arguments:
///   - `ApiKey`: The API key for authentication.
///
/// Returns:
///   A map of request headers.
Map<String, String> getRequestHeaders(String apiKey, String lang) {
  return <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
    'ApiKey': apiKey,
    'Lang': lang,
    'x-gb-agent':
        'Flutter/$getSdkVersion()/${Platform.I.operatingSystem}/${Platform.I.version}'
  };
}
