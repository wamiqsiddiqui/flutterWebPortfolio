import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/widgets/animatedCounter.dart';

class Highlight extends StatelessWidget {
  final Widget counter;
  final String? label;
  const Highlight({Key? key,required this.counter,this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          label!,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
