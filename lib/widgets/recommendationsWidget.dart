import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/models/Recommendations.dart';
import 'package:testapp/widgets/recommendationCard.dart';


class RecommendationsWidget extends StatelessWidget {
  const RecommendationsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                List.generate(demoRecommendations.length,
                      (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationCard(recommendations: demoRecommendations[index]),
                ),)
            ),
          )
        ],
      ),
    );
  }
}
