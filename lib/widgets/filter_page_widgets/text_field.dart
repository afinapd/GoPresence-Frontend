import 'package:final_project/widgets/shared/media_query.dart';
import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  final Function onTap;
  final Function onSubmitted;
  final Function onChange;
  final bool readOnly;
  final String hint;
  final TextEditingController controller;
  TextForm(
      {
        this.onTap,
        this.onSubmitted,
        this.onChange,
        this.readOnly,
        this.hint,
        this.controller});

  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(140, 156, 171,1),),
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 40.0,
      width: displayWidth(context) * 80,
      child: TextFormField(
        controller: widget.controller,
        style: TextStyle(
          color: Color.fromRGBO(140, 156, 171,1),
          fontFamily: 'OpenSans',
        ),
        onTap: widget.onTap,
        onFieldSubmitted: widget.onSubmitted,
        onChanged: widget.onChange,
        readOnly: widget.readOnly,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 6.0),
          prefixIcon: Icon(
            Icons.search,
            color: Color.fromRGBO(140, 156, 171,1),
            size: 20,
          ),
          hintText: widget.hint,
          hintStyle: TextStyle(
              color: Color.fromRGBO(140, 156, 171,1), fontSize: 16),
        ),
      ),
    );
  }
}
