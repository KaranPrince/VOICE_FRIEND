import 'package:flutter/material.dart';
import 'package:flutter_voice_friend/screens/chat_screen.dart';

void main() {
  runApp(const VoiceFriendApp());
}

class VoiceFriendApp extends StatelessWidget {
  const VoiceFriendApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const ChatScreen(),
    );
  }
}
