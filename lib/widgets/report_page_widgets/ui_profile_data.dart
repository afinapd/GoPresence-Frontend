import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../services/time_service.dart';
import 'title_profile.dart';
import 'value_profile.dart';
import 'value_profile_expanded.dart';

class UIProfileData extends StatelessWidget {
  final name;
  final department;
  final birth;
  final phone;
  final email;
  final gender;
  final bloodtype;
  final livingPartner;

  UIProfileData(
      {this.name,
      this.department,
      this.birth,
      this.phone,
      this.email,
      this.gender,
      this.livingPartner,
      this.bloodtype});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TitleProfile(
          title: 'Name',
        ),
        ValueProfile(icon: FontAwesomeIcons.userAlt, label: name),
        TitleProfile(
          title: 'Study Program',
        ),
        ValueProfile(
          icon: FontAwesomeIcons.bookOpen,
          label: livingPartner,
        ),
        TitleProfile(
          title: 'Department',
        ),
        ValueProfile(icon: FontAwesomeIcons.university, label: department),
        TitleProfile(
          title: 'Birth of Date',
        ),
        ValueProfile(
            icon: FontAwesomeIcons.birthdayCake, label: TimeService().beautifyDate(birth)),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TitleProfile(
                    title: 'Gender',
                  ),
                  ValueProfileExpanded(
                    icon: FontAwesomeIcons.venusMars,
                    label: gender,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TitleProfile(
                    title: 'Blood Type',
                  ),
                  ValueProfileExpanded(
                    icon: FontAwesomeIcons.tint,
                    label: bloodtype,
                  ),
                ],
              ),
            ),
          ],
        ),
        TitleProfile(
          title: 'Phone Number',
        ),
        ValueProfile(icon: FontAwesomeIcons.phone, label: phone),
        TitleProfile(
          title: 'Email',
        ),
        ValueProfile(icon: FontAwesomeIcons.envelope, label: email),
      ],
    );
  }
}
