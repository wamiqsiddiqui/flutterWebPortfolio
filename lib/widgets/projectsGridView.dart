import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/models/Projects.dart';
import 'package:testapp/widgets/projectCard.dart';

class ProjectGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;
  const ProjectGridView({Key? key, this.crossAxisCount = 3, this.childAspectRatio = 1.3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: demoProjects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
            childAspectRatio: childAspectRatio,
            crossAxisCount: crossAxisCount
        ),
        itemBuilder: (context,index)=> ProjectCard(project: demoProjects[index],)
    );
  }
}
