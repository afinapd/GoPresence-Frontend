import 'package:flutter/material.dart';

class ValueProfile extends StatelessWidget {
  final IconData icon;
  final String label;

  ValueProfile({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 25),
          child: Icon(
            icon,
            size: 20,
            color: Color.fromRGBO(30, 45, 90,1),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width / 1.3,
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(width: 0.2, color: Color.fromRGBO(199, 208, 217,1)),
          )),
          child: Text(
            label,
            style: TextStyle(
              color: Color.fromRGBO(140, 156, 171,1),
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}
