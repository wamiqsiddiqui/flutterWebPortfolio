import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/widgets/animatedCounter.dart';
import 'package:testapp/widgets/highlight.dart';

import '../responsive.dart';

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context) ? Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Highlight(
                counter: AnimatedCounter(
                  value: 119,
                  text: "K+",
                ),
                label: "Subscribers",
              ),
              Highlight(
                counter: AnimatedCounter(
                  value: 40,
                  text: "+",
                ),
                label: "Videos",
              ),
            ],
          ),
          const SizedBox(height: defaultPadding,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Highlight(
                counter: AnimatedCounter(
                  value: 30,
                  text: "+",
                ),
                label: "Github Projects",
              ),
              Highlight(
                counter: AnimatedCounter(
                  value: 13,
                  text: "K+",
                ),
                label: "Stars",
              ),
            ],
          )
        ],
      ) : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Highlight(
            counter: AnimatedCounter(
              value: 119,
              text: "K+",
            ),
            label: "Subscribers",
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 40,
              text: "+",
            ),
            label: "Videos",
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 30,
              text: "+",
            ),
            label: "Github Projects",
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 13,
              text: "K+",
            ),
            label: "Stars",
          ),

        ],
      ),
    );
  }
}
