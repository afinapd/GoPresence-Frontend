import 'package:final_project/widgets/shared/media_query.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'qr_button.dart';

class AttendanceButton extends StatefulWidget {
  final Function callback;
  String checkType = 'In';
  final currentState;
  AttendanceButton(
      {@required this.callback,
      @required this.checkType,
      @required this.currentState});
  @override
  _AttendanceButtonState createState() => _AttendanceButtonState();
}

class _AttendanceButtonState extends State<AttendanceButton> {
  String checkType = 'In';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: displayHeight(context)*6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Check',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(140, 156, 171,1),
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              DropdownButton(
                onChanged: widget.callback,
                value: widget.checkType,
                items: [
                  DropdownMenuItem(
                    child: Text('IN',
                        style: TextStyle(color: Color.fromRGBO(140, 156, 171,1), fontSize: 20)),
                    value: 'In',
                  ),
                  DropdownMenuItem(
                    child: Text('OUT',
                        style: TextStyle(color: Color.fromRGBO(140, 156, 171,1), fontSize: 20)),
                    value: 'Out',
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: displayHeight(context)*10,
          ),
          QRButton(currentState: widget.currentState,),
          SizedBox(
            height: displayHeight(context)*2,
          ),
          Text(
            'Scan the QR code on the student card',
            style: TextStyle(
              color: Color.fromRGBO(140, 156, 171,1),
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: displayHeight(context)*6,
          ),
          Container(
            height: 150,
            child: Image.asset('assets/example.png')
          )
        ],
      ),
    );
  }
}
