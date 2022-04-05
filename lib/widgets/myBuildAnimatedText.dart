
import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/responsive.dart';
import 'package:testapp/widgets/AnimatedText.dart';
import 'package:testapp/widgets/flutterCodedText.dart';


class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if(!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if(!Responsive.isMobileLarge(context))
            SizedBox(
            width: defaultPadding / 2,
          ),
          Text(
              "I build "
          ),
          Responsive.isMobile(context)? Expanded(child: AnimatedTexts()) : AnimatedTexts(),
          if(!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding / 2,
            ),
          if(!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}
