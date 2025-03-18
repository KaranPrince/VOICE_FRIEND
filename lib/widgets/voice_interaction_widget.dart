import 'package:flutter/material.dart';
import 'package:flutter_voice_friend/services/speech_service.dart';
import 'package:flutter_voice_friend/services/audio_service.dart';

class VoiceInteractionWidget extends StatefulWidget {
  const VoiceInteractionWidget({super.key});

  @override
  State<VoiceInteractionWidget> createState() => _VoiceInteractionWidgetState();
}

class _VoiceInteractionWidgetState extends State<VoiceInteractionWidget>
    with SingleTickerProviderStateMixin {
  late SpeechService _speechService;
  late AudioService _audioService;
  late AnimationController _animationController;

  String _text = 'Tap the mic and speak';
  bool _isListening = false;

  @override
  void initState() {
    super.initState();
    _speechService = SpeechService();
    _audioService = AudioService();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
      lowerBound: 0.7,
      upperBound: 1.0,
    );

    _speechService.onTranscription = (transcription) {
      setState(() {
        _text = transcription;
      });
    };

    _speechService.onSoundLevelChange = (level) {
      _animationController.value = level;
    };
  }

  Future<void> _startListening() async {
    if (!_isListening) {
      await _speechService.startListening('onDevice', 'en');
      setState(() {
        _isListening = true;
        _animationController.repeat(reverse: true);
      });
    }
  }

  Future<void> _stopListening() async {
    if (_isListening) {
      await _speechService.stopListening('onDevice');
      setState(() {
        _isListening = false;
        _animationController.stop();
        _animationController.value = 1.0;
      });
      _audioService.playTextToSpeech(_text);
    }
  }

  @override
  void dispose() {
    _speechService.dispose();
    _audioService.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ScaleTransition(
          scale: _animationController,
          child: IconButton(
            icon: Icon(
              _isListening ? Icons.mic : Icons.mic_none,
              size: 50,
              color: Colors.deepPurple,
            ),
            onPressed: _isListening ? _stopListening : _startListening,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          _text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
