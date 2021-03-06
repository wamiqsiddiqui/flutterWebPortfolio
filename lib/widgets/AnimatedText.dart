import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTexts extends StatelessWidget {
  const AnimatedTexts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
            "responsive web and mobile app.",
            speed: Duration(milliseconds: 60)
        ),
        TyperAnimatedText(
            "complete e-commerce app UI.",
            speed: Duration(milliseconds: 60)
        ),
        TyperAnimatedText(
            "Chat app with dark and light theme.",
            speed: Duration(milliseconds: 60)
        ),
      ],
    );
  }
}
