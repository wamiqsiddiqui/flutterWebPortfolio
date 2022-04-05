import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/widgets/knowledgeText.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: "Flutter, Dart"),
        KnowledgeText(text: "Styluss, Sass, Less"),
        KnowledgeText(text: "Gulp, Webpack, Grunt"),
        KnowledgeText(text: "GIT Knowledge"),
      ],
    );
  }
}
