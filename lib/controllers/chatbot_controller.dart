import 'package:flutter_tts/flutter_tts.dart';
import '../services/nlp_service.dart';

class ChatbotController {
  final FlutterTts flutterTts = FlutterTts();

  // Function to handle user input
  Future<String> handleUserInput(String userText) async {
    if (userText.trim().isEmpty) return "Please say something."; // Handle empty input

    print("User Input: $userText");  // Debugging

    // Get AI response from NLP service
    String response = await NLPService.getAIResponse(userText);

    print("AI Response: $response");  // Debugging

    // Speak out the response
    await flutterTts.speak(response);

    return response;  // ✅ Return AI response
  }
}
