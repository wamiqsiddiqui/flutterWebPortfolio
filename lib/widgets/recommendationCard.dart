import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/models/Recommendations.dart';

class RecommendationCard extends StatelessWidget {
  final Recommendations recommendations;
  const RecommendationCard({Key? key, required this.recommendations}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 155,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendations.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            recommendations.source!,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: defaultPadding / 2),
            child: Text(
              recommendations.text!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
