/// nlp_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NLPService {
  static final String _apiUrl = "https://api-inference.huggingface.co/models/facebook/blenderbot-400M-distill";
  static final String _apiKey = dotenv.env['HUGGINGFACE_API_KEY'] ?? '';

  static Future<String> getAIResponse(String userInput) async {
    if (_apiKey.isEmpty) return "Hugging Face API key is missing!";

    try {
      final response = await http.post(
        Uri.parse(_apiUrl),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $_apiKey"
        },
        body: jsonEncode({"inputs": userInput}),
      );

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        return jsonResponse[0]["generated_text"] ?? "I couldn't understand that.";
      } else {
        return "Error: ${response.statusCode}";
      }
    } catch (e) {
      return "AI response failed: $e";
    }
  }
}