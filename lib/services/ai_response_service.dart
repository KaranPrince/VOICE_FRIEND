import 'package:http/http.dart' as http;
import 'dart:convert';

const String apiKey = 'AIzaSyDYFaSycscgQYIcbywgmr5cqEbh7x8Lh7M';

class AIResponseService {
  static Future<String> getResponse(String input) async {
    final response = await http.post(
      Uri.parse('https://api.openai.com/v1/chat/completions'),
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'model': 'gpt-3.5-turbo',
        'messages': [
          {'role': 'user', 'content': input}
        ],
      }),
    );

    if (response.statusCode == 200) {
      final result = json.decode(response.body);
      return result['choices'][0]['message']['content'];
    } else {
      return "Failed to generate response";
    }
  }
}
