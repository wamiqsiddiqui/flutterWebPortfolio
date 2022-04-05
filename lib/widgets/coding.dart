import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testapp/widgets/animatedLinearProgressIndicator.dart';

import '../constants.dart';

class Coding extends StatelessWidget {
  const Coding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Coding",style: Theme.of(context).textTheme.subtitle2,),
        ),
        AnimatedLinearProgressIndicator(percentage: 0.7,label: "Dart",),
        AnimatedLinearProgressIndicator(percentage: 0.7,label: "Java",),
        AnimatedLinearProgressIndicator(percentage: 0.6,label: "JavaScript",),
        AnimatedLinearProgressIndicator(percentage: 0.56,label: "C#",),
        AnimatedLinearProgressIndicator(percentage: 0.75,label: "HTML",),
        AnimatedLinearProgressIndicator(percentage: 0.54,label: "CSS",),
      ],
    );
  }
}
