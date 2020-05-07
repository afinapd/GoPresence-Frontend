import 'package:final_project/widgets/shared/media_query.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorHandling extends StatelessWidget {
  final statusCode;
  final description;
  final routeClose;

  ErrorHandling({this.statusCode, this.description, this.routeClose});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: displayWidth(context) * 5,
            bottom: displayWidth(context) * 10,
            left: displayWidth(context) * 5,
            right: displayHeight(context) * 3,
          ),
          margin: EdgeInsets.only(top: displayHeight(context) * 6),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(224, 228, 233,1),
                  blurRadius: 10.0,
                  offset: Offset(10, 10)
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              SizedBox(
                height: displayHeight(context) * 3,
              ),
              Image.asset('assets/error.png', width: 200,),
              SizedBox(
                height: displayHeight(context) * 1,
              ),
              Text(
                'Oops Something went wrong !',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(30, 45, 90,1)),
              ),
              SizedBox(
                height: displayHeight(context) * 1,
              ),
              Text(
                statusCode != null
                    ? '$statusCode : $description'
                    : '$description',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(140, 156, 171,1)
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: displayWidth(context) * 0,
          top: displayHeight(context) * 8,
          child: FlatButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => routeClose));
            },
            child: Icon(
                Icons.close,
                color: Color.fromRGBO(140, 156, 171,1)
            ),
          ),
        ),
      ],
    );
  }
}
