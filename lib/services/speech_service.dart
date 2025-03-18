import 'package:speech_to_text/speech_to_text.dart' as stt;

class SpeechService {
  final stt.SpeechToText _speech = stt.SpeechToText();

  Future<void> initialize() async {
    bool available = await _speech.initialize();
    if (!available) {
      throw Exception('Speech recognition not available');
    }
  }

  void startListening(Function(String) onResult) {
    _speech.listen(
      onResult: (result) => onResult(result.recognizedWords),
      listenMode: stt.ListenMode.dictation,
    );
  }

  void stopListening() {
    _speech.stop();
  }

  void dispose() {
    _speech.cancel();
  }
}
