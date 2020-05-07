//import 'package:final_project/blocs/bloc_event.dart';
//import 'package:final_project/blocs/list_page_bloc.dart';
//import 'package:final_project/services/scan_service.dart';
//import 'package:final_project/widgets/filter_page_widgets/search_by.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
//class SearchByQR extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//     return SearchBy(
//       icon: FontAwesomeIcons.qrcode,
//       onPressed: () async {
//         String result = await ScanService().qr();
//         BlocProvider.of<ListPageBloc>(context)
//             .add(SearchUserById(result, 'qr', 0));
//       },
//     );
//  }
//}
