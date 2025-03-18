import 'package:flutter/material.dart';
import '../components/mic_button.dart';
import 'package:lottie/lottie.dart';
import '../controllers/chatbot_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ChatbotController _chatbotController = ChatbotController();
  String _userSpeech = "";
  String _aiResponse = "Hi there! How can I help you today?";

  void _handleResponse(String userText) async {
    setState(() {
      _userSpeech = userText;
    });

    // ✅ Await AI response
    String aiText = await _chatbotController.handleUserInput(userText);
    setState(() {
      _aiResponse = aiText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Voice Friend",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: 150,
              child: Lottie.asset(
                'assets/ai_droid.json', // Ensure file exists
                repeat: true,
                reverse: true,
                animate: true,
              ),
            ),
            const Text(
              "Hi there! How can I help you today?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text(
                    "You said:",
                    style: TextStyle(color: Colors.purple[200], fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    _userSpeech,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Divider(color: Colors.purple[300]),
                  const SizedBox(height: 10),
                  Text(
                    _aiResponse,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.lightGreenAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            MicButton(onResponse: _handleResponse), // ✅ Fixed Callback
            const SizedBox(height: 20),
            const Text(
              "Developed by: KARAN S",
              style: TextStyle(color: Colors.white60, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
