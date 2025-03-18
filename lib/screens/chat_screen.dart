import 'package:flutter/material.dart';
import 'package:flutter_voice_friend/widgets/ai_droid_animation.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter_tts/flutter_tts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late stt.SpeechToText _speech;
  late FlutterTts _tts;
  bool isListening = false;
  String responseText = 'Tap the mic and speak';

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
    _tts = FlutterTts();

    // ✅ Configure TTS settings
    _tts.setLanguage('en-US');
    _tts.setPitch(1.0);
    _tts.setSpeechRate(0.5);
  }

  void _toggleListening() async {
    if (!isListening) {
      bool available = await _speech.initialize(
        onStatus: (status) => print('Status: $status'),
        onError: (error) => print('Error: $error'),
      );

      if (available) {
        setState(() => isListening = true);
        _speech.listen(
          onResult: (result) {
            setState(() {
              responseText = result.recognizedWords;
            });

            if (result.finalResult) {
              _getResponse(result.recognizedWords);
            }
          },
        );
      }
    } else {
      setState(() => isListening = false);
      _speech.stop();
    }
  }

  // ✅ AI-Generated Response + TTS
  void _getResponse(String input) async {
    if (input.isNotEmpty) {
      setState(() {
        responseText = "You said: '$input'. How can I help you?";
      });

      // ✅ Speak the response aloud
      await _tts.speak(responseText);
    } else {
      setState(() {
        responseText = "Sorry, I didn't catch that. Please try again.";
      });

      // ✅ Speak the error message aloud
      await _tts.speak(responseText);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Voice Friend',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AIDroidAnimation(),
              const SizedBox(height: 20),
              Text(
                responseText,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: _toggleListening,
                child: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  radius: 40,
                  child: Icon(
                    isListening ? Icons.mic_off : Icons.mic,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Developed by: KARAN S',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white54,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
