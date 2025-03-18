import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class AudioService {
  final FlutterTts _flutterTts = FlutterTts();

  final StreamController<String> _errorController =
  StreamController<String>.broadcast();

  Stream<String> get errorStream => _errorController.stream;

  void initialize(String audioBackend, String selectedVoice, double voiceSpeed) {
    _flutterTts.setLanguage(selectedVoice);
    _flutterTts.setSpeechRate(voiceSpeed);
    _flutterTts.setVolume(1.0);
    _flutterTts.setPitch(1.0);
  }

  Future<void> playTextToSpeech(String text) async {
    try {
      await _flutterTts.speak(text);
    } catch (e) {
      _errorController.add(e.toString());
    }
  }

  void stop() async {
    await _flutterTts.stop();
  }

  void dispose() {
    _flutterTts.stop();
    _errorController.close();
  }
}
