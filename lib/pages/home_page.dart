import 'package:final_project/blocs/app/app_bloc.dart';
import 'package:final_project/blocs/app/app_state.dart';
import 'package:final_project/widgets/home_page_widgets/date_now.dart';
import 'package:final_project/widgets/home_page_widgets/greeting.dart';
import 'package:final_project/widgets/home_page_widgets/slide_bar.dart';
import 'package:final_project/widgets/shared/media_query.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, mainState) {
        // since we need to fetch from API when online and to the local when offline
        // this variable is needed to store the currentState
         String currentState;
        if (mainState is Online) {
          currentState = mainState.stateVal;
        } else if (mainState is Offline) {
          currentState = mainState.stateVal;
        }
         return Scaffold(
           body: Stack(
             children: <Widget>[
               Container(
                   height: displayHeight(context) * 36,
                   width: displayWidth(context) * 100,
                   decoration: BoxDecoration(
                       gradient: LinearGradient(
                           begin: Alignment.bottomCenter,
                           end: Alignment.center,
                           colors: <Color>[
                             Color.fromRGBO(30, 45, 90,1),
                             Colors.white,
                           ]
                       )
                   ),
                   child: Image.asset(
                     'assets/undip.jpeg',
                     fit: BoxFit.fitWidth,
                     alignment: Alignment.bottomCenter,
                   )),
               Greeting(),
               DateNow(),
               SlideBar(),
             ],
           ),
         );
      },
    );
  }
}