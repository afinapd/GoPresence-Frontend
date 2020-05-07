import 'package:final_project/widgets/shared/media_query.dart';
import 'package:flutter/material.dart';

import '../../auth.dart';

class Greeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: displayHeight(context) * 2,
      top: displayHeight(context) * 32,
      child: Text(
        'Hello Ari Eko Widyantoro, Have a great day !',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white),
      ),
    );
  }
}
