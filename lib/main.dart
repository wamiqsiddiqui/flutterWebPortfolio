import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/screens/homeScreen.dart';
import 'package:testapp/screens/mainScreen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        iconTheme: IconThemeData(
          color: bodyTextColor
        ),
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor, /// here textTheme.apply means it will apply on whole text them
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.white)
            .copyWith(bodyText1:   TextStyle(color: bodyTextColor),///here .copyWith can be for different styles i.e. bodyText1, bodyText2 etc.
            bodyText2:   TextStyle(color: bodyTextColor)), //bodyText2 is default text style for texts
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

      ),
      home: HomeScreen(),
    );
  }
}
