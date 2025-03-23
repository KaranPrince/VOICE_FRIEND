import 'package:flutter/material.dart';

class MicButton extends StatelessWidget {
  const MicButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add mic interaction logic here
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        backgroundColor: Colors.purpleAccent.shade700,
        elevation: 8,
      ),
      child: const Icon(
        Icons.mic,
        color: Colors.white,
        size: 32,
      ),
    );
  }
}
