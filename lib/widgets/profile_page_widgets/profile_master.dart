import 'package:final_project/widgets/profile_page_widgets/logout_button.dart';
import 'package:final_project/widgets/profile_page_widgets/my_sliver_appbar.dart';
import 'package:final_project/widgets/profile_page_widgets/ui_profile_data.dart';
import 'package:final_project/widgets/shared/media_query.dart';
import 'package:flutter/material.dart';

class ProfileMaster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: MySliverAppBar(
                expandedHeight: displayHeight(context) * 20,
//                      subName: state.result['name'],
//                      department: state.result['department']['name'],
              ),
              pinned: false,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  UIProfileData(
                    name: 'Ari Eko Widyantoro, S.T., M.Si.',
                    department: 'Faculty of Engineering',
                    birth:'2000-12-14',
                    phone: '0247460053',
                    email: 'ari@undip.com',
                    gender: 'Male',
                    bloodtype: 'O',
                    livingPartner: 'Head of Administration',
                  ),
                  LogOutButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
