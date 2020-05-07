import 'package:final_project/blocs/bloc_event.dart';
import 'package:final_project/blocs/scan_nfc_page_bloc.dart';
import 'package:final_project/services/scan_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QRButton extends StatelessWidget {
  final currentState;
  QRButton({@required this.currentState});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () async {
        String result = await ScanService().qr();
        BlocProvider.of<ScanNfcPageBloc>(context)
            .add(SearchUserById(result, 'qr', 0, currentState));
      },
      child: Container(
        child: Image.asset('assets/qrcode.png', color: Color.fromRGBO(30, 45, 90,1), height: 200,),
      )
    );
  }
}
