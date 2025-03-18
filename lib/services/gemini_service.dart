import 'package:http/http.dart' as http;
import 'dart:convert';

class GeminiService {
  static const String _apiKey = 'YOUR_GEMINI_API_KEY'; // Replace with actual Gemini key
  static const String _url = 'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent';

  Future<String> generateResponse(String input) async {
    final response = await http.post(
      Uri.parse('$_url?key=$_apiKey'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        "contents": [
          {"parts": [{"text": input}]}
        ]
      }),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['candidates'][0]['content']['parts'][0]['text'];
    } else {
      throw Exception('Failed to get response from Gemini: ${response.body}');
    }
  }
}
