import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/models/Projects.dart';
import 'package:testapp/widgets/projectCard.dart';
import 'package:testapp/widgets/projectsGridView.dart';

import '../responsive.dart';

class MyProjects extends StatelessWidget {

  const MyProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
            mobile: ProjectGridView(crossAxisCount: 1,childAspectRatio: 1.7,),
            mobileLarge: ProjectGridView(crossAxisCount: 2),
            tablet: ProjectGridView(childAspectRatio: 1.1  ),
            desktop: ProjectGridView()
        )
      ],
    );
  }
}
