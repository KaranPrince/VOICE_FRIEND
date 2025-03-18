import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class MicButton extends StatefulWidget {
  final Function(String) onResponse;

  const MicButton({Key? key, required this.onResponse}) : super(key: key);

  @override
  _MicButtonState createState() => _MicButtonState();
}

class _MicButtonState extends State<MicButton> {
  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = "";

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  void _startListening() async {
    bool available = await _speech.initialize();
    if (available) {
      setState(() => _isListening = true);
      _speech.listen(
        onResult: (result) {
          setState(() {
            _text = result.recognizedWords;
          });
        },
        listenFor: const Duration(seconds: 5), // Adjust duration if needed
      );
    }
  }

  void _stopListening() {
    _speech.stop();
    setState(() => _isListening = false);

    if (_text.trim().isNotEmpty) {
      widget.onResponse(_text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _isListening ? _stopListening : _startListening,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(16),
      ),
      child: Icon(
        _isListening ? Icons.mic_off : Icons.mic,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
