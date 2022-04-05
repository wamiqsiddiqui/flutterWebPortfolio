

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testapp/models/Recommendations.dart';
import 'package:testapp/widgets/highlightsInfo.dart';
import 'package:testapp/widgets/myProjects.dart';
import 'package:testapp/widgets/recommendationCard.dart';
import 'package:testapp/widgets/recommendationsWidget.dart';

import '../constants.dart';
import '../widgets/homeBanner.dart';
import 'mainScreen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighlightsInfo(),
        MyProjects(),
        RecommendationsWidget(),
      ],
    );
  }
}
