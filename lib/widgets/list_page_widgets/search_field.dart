import 'package:final_project/widgets/filter_page_widgets/text_field.dart';
import 'package:final_project/widgets/list_page_widgets/search_by.dart';
import 'package:final_project/widgets/shared/media_query.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchField extends StatelessWidget {
  final Function onSubmitted;
  final Function qrOnPressed;
  final Function nfcOnPressed;
  final TextEditingController controller;
  SearchField(
      {@required this.onSubmitted,
      @required this.qrOnPressed,
      @required this.nfcOnPressed,
      @required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: displayHeight(context) * 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextForm(
              controller: controller,
              onSubmitted: onSubmitted,
              hint: 'Search employee by name',
              readOnly: false,
            ),
//            FieldSearchName(
//              controller: controller,
//              onSubmitted: onSubmitted,
//            ),
            SearchBy(
              onPressed: qrOnPressed,
              icon: FontAwesomeIcons.qrcode,
            ),
//            SearchBy(
//              icon: Icons.nfc,
//              onPressed: nfcOnPressed,
//            ),
            // SearchByQR(),
            // SearchByNFC(),
          ],
        ),
      ],
    );
  }
}
