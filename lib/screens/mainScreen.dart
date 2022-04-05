import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/responsive.dart';
import 'package:testapp/widgets/SideMenu.dart';

class MainScreen extends StatelessWidget {

  final List<Widget> children;
  const MainScreen({Key? key,required this.children}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context) ? null : AppBar(
        backgroundColor: bgColor,
        leading: Builder(
          builder:(context) => IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(Responsive.isDesktop(context))
              Expanded(
                //Now this take (2+7 = 9) so 2/9=0.22 means 22%
                flex: 2,
                child: SideMenu(),
              ),
              SizedBox(width: defaultPadding,),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children
                    ],
                  )
                ),
              ),
              SizedBox(width: defaultPadding,),
            ],
          ),
        ),
      ),
    );
  }
}
