import 'package:final_project/widgets/shared/media_query.dart';
import 'package:flutter/material.dart';

class LogoLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: displayHeight(context) * 20,
        ),
        Image.asset(
          'assets/logo.png',
          height: displayHeight(context) * 30,
        ),
        SizedBox(
          height: displayHeight(context) * 28,
        ),
        Image.asset(
          'assets/poweredby.png',
          height: displayHeight(context) * 10,
        ),
      ],
    ));
  }
}
