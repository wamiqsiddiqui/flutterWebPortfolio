import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';

class KnowledgeText extends StatelessWidget {

  final String text;
  const KnowledgeText({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Icon(Icons.check),
          SizedBox(width: defaultPadding / 2,),
          Text(text),
        ],
      ),
    );
  }
}
