import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AIDroidAnimation extends StatelessWidget {
  const AIDroidAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/ai_droid.json',
      width: 150,
      height: 150,
      fit: BoxFit.cover,
    );
  }
}
