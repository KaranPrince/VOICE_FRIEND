import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SpeechToTextService {
  static final String _apiUrl = "https://api.deepgram.com/v1/listen";
  static final String _apiKey = dotenv.env['DEEPGRAM_API_KEY'] ?? '';

  static Future<String> convertAudioToText(String audioBase64) async {
    if (_apiKey.isEmpty) return "Deepgram API key is missing!";

    try {
      final response = await http.post(
        Uri.parse(_apiUrl),
        headers: {
          "Authorization": "Token $_apiKey",
          "Content-Type": "audio/wav",
        },
        body: base64Decode(audioBase64),
      );

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        return jsonResponse["results"]["channels"][0]["alternatives"][0]["transcript"] ?? "Could not understand.";
      } else {
        return "Error: ${response.statusCode}";
      }
    } catch (e) {
      return "Speech recognition failed: $e";
    }
  }
}
