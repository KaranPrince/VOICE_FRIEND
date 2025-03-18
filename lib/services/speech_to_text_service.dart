import 'package:speech_to_text/speech_to_text.dart';

class SpeechToTextService {
  static final _speech = SpeechToText();

  static Future<String> startListening() async {
    if (await _speech.initialize()) {
      await _speech.listen();
      await Future.delayed(const Duration(seconds: 2));
      _speech.stop();
      return _speech.lastRecognizedWords;
    }
    return "Failed to initialize speech recognition";
  }
}
