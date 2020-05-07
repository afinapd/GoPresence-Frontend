import 'package:final_project/blocs/bloc_event.dart';
import 'package:final_project/blocs/bloc_state.dart';
import 'package:final_project/blocs/profile_bloc.dart';
import 'package:final_project/constant/constants.dart';
import 'package:final_project/widgets/shared/circular_loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardView extends StatelessWidget {
  final String time;
  final String id;
  final String timeOut;
  final currentState;
  CardView(
      {@required this.id,
      @required this.time,
      @required this.timeOut,
      @required this.currentState});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (_) => ProfileBloc(),
      child: Card(
//        color: Color.fromRGBO(250, 250, 250, 1),
        shape: Border(bottom: BorderSide(color: Color.fromRGBO(199, 208, 217,1), width: 0.2)),
        margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5),
        elevation: 0.1,
        child: BlocBuilder<ProfileBloc, BlocState>(
          builder: (context, state) {
            if (state is Waiting) {
              BlocProvider.of<ProfileBloc>(context)
                  .add(SearchUserById(id, 'id', 0, currentState));
            }
            if (state is Success) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: state.result['image'] != null
                      ? NetworkImage('$API/${state.result['image']['path']}')
                      : AssetImage('assets/no_avatar.jpg'),
                ),
                title: Text(
                  state.result['name'],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(140, 156, 171,1),
                      fontSize: 16),
                ),
                subtitle: Text(state.result['livingPartner'],
                    style: TextStyle(
                        color: Color.fromRGBO(140, 156, 171,1), fontSize: 14)
                ),
                trailing: Container(
                    width: 95,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('IN',
                                style: TextStyle(
                                    color: Color.fromRGBO(140, 156, 171,1), fontSize: 14)),
                            Text('$time',
                                style: TextStyle(
                                    color: Color.fromRGBO(140, 156, 171,1), fontSize: 14)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('OUT',
                                style: TextStyle(
                                    color: Color.fromRGBO(140, 156, 171,1), fontSize: 14)),
                            Text('$timeOut',
                                style: TextStyle(
                                    color: Color.fromRGBO(140, 156, 171,1), fontSize: 14)),
                          ],
                        ),
                      ],
                    )),
              );
            }
            if (state is Error) {
              return Center(
                child: Text("An error has occured.. Sorry..."),
              );
            }
            return CircularLoading();
          },
        ),
      ),
    );
  }
}
