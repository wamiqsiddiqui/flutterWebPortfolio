import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/widgets/animatedCircularProgressIndicator.dart';
import 'package:testapp/widgets/coding.dart';
import 'package:testapp/widgets/knowledgeText.dart';
import 'package:testapp/widgets/knowledges.dart';
import 'package:testapp/widgets/skills.dart';

import 'areaInfoText.dart';
import 'myInfo.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                        title: "Residence",
                        text:"Pakistan"
                    ),
                    AreaInfoText(
                        title: "City",
                        text:"Karachi"
                    ),
                    AreaInfoText(
                        title: "Age",
                        text:"23"
                    ),
                    Skills(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2,),
                    TextButton(
                      onPressed: (){

                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context).textTheme.bodyText1!.color
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding / 2,
                            ),
                            Icon(Icons.download,color: Theme.of(context).iconTheme.color,)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding / 2),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: (){

                            },
                            icon: Icon(Icons.link),
                          ),
                          IconButton(
                            onPressed: (){

                            },
                            icon: Icon(Icons.link),
                          ),
                          IconButton(
                            onPressed: (){

                            },
                            icon: Icon(Icons.link),
                          ),
                          Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
