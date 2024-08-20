import 'dart:convert';

import '../../models/requests/player_register_request.dart';
import '../../models/responses/player_register_response.dart';
import '../utils/constants.dart';
import '../utils/header_generator.dart';
import 'package:http/http.dart' as http;

/// Sends a player registration request to the Gameball API asynchronously.
///
/// This function constructs the request URL, sets headers, encodes the
/// `PlayerRegisterRequest` object, and sends a POST request to the API. It
/// then checks the response status code and returns a `PlayerRegisterResponse`
/// object on success or throws an exception on failure.
///
/// Arguments:
///   - `requestBody`: The `PlayerRegisterRequest` object containing player data.
///   - `apiKey`: The API key for authentication.
///
/// Returns:
///   A `Future<PlayerRegisterResponse>` object containing the server response.
///   On success, the response code will be 200 and the returned object
///   will be a `PlayerRegisterResponse` parsed from the JSON response body.
///
/// Throws:
///   An `Exception` with an error message if the request fails.
Future<PlayerRegisterResponse> createPlayerRequest(
    PlayerRegisterRequest requestBody, String apiKey) async {
  const url = '$baseUrl$playerEndpoint';

  final response = await http.post(
    Uri.parse(url),
    headers: getRequestHeaders(apiKey),
    body: jsonEncode(requestBody),
  );

  // Check for successful response
  if (response.statusCode == 200) {
    // Parse the JSON response and return a PlayerRegisterResponse object
    final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
    return PlayerRegisterResponse.fromJson(jsonMap);
  } else {
    // Handle error based on status code or throw an exception
    throw Exception(
        'Failed to create player. Status code: ${response.statusCode}');
  }
}
