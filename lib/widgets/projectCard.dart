import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/models/Projects.dart';

import '../responsive.dart';

class ProjectCard extends StatelessWidget {
  final Projects project;
  const ProjectCard({Key? key,required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context)? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                height: 1.5
            ),
          ),
          Spacer(),
          TextButton(
            onPressed: (){

            },
            child: Text(
              "Read More >>",
              style: TextStyle(
                color: primaryColor
              ),
            ),
          )
        ],
      ),
    );
  }
}
