import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;
  const Responsive({Key? key, required this.mobile, this.mobileLarge, this.tablet, required this.desktop}) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 515;

  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 730;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1065;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1056;
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if(_size.width >= 1065){//1024
      return desktop;
    }else if(_size.width >= 730 && tablet != null){
      return tablet!;
    }else if(_size.width >= 515 && mobileLarge != null){
      return mobileLarge!;
    }else{
      return mobile;
    }
  }
}
