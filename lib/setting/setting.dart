import 'package:baicuoiki/bottom/bottomMenu.dart';
import 'package:baicuoiki/setting/CupertionSwichApp.dart';
import 'package:baicuoiki/setting/Dart_light.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ThemeModal.dart';

class SettingsPage extends StatefulWidget {
  static const routeName = '/setting';

  const SettingsPage({Key? key}) : super(key: key);
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeModal(),
      child: Consumer(builder: (context, ThemeModal themeModel, child) {
        return MaterialApp(
          title: 'Flutter News',
          debugShowCheckedModeBanner: false,
          theme: themeModel.isDark ? ThemeData.dark() : ThemeData.light(),
          home: DartLight(),
        );
      }),
    );
    // return Scaffold(
        //     // bottomNavigationBar: const BottomNav(),
        //     body: SingleChildScrollView(
        //   child: Container(
        //     child: Column(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
        //           child: Row(
        //             children: [
        //               Icon(Icons.add_alert),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Text('Nhận thông báo',
        //                   style: TextStyle(fontSize: 18, color: Colors.black)),
        //               SizedBox(
        //                 width: 120,
        //               ),
        //               CupertinoSwitchExample(),
        //             ],
        //           ),
        //         ),
        //         Container(
        //           width: 455,
        //           child: Divider(
        //             height: 5,
        //             color: Colors.black45,
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
        //           child: Row(
        //             children: [
        //               Icon(Icons.mode_night_outlined),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Text("Chế độ nền tối   ", style: TextStyle(fontSize: 18, color: Colors.black)),
        //               SizedBox(
        //                 width: 120,
        //               ),
        //               CupertinoSwitchExample(),
        //             ],
        //           ),
        //         ),
        //         Container(
        //           width: 455,
        //           child: Divider(
        //             height: 5,
        //             color: Colors.black45,
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.fromLTRB(20, 17, 0, 17),
        //           child: Row(
        //             children: [
        //               Text(
        //                 'Kiểm tra phiên bản',
        //                 style: TextStyle(fontSize: 18, color: Colors.black),
        //               ),
        //               SizedBox(
        //                 width: 150,
        //               ),
        //               Text(
        //                 '4.32',
        //                 style: TextStyle(fontSize: 18, color: Colors.red),
        //               ),
        //             ],
        //           ),
        //         ),
        //         Container(
        //           width: 455,
        //           child: Divider(
        //             height: 5,
        //             color: Colors.black45,
        //           ),
        //         ),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
        //           child: Row(
        //             children: [
        //               Icon(Icons.star_border),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Text('Đánh giá app tuoitre.vn',
        //                   style: TextStyle(fontSize: 18, color: Colors.black)),
        //             ],
        //           ),
        //         ),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
        //           child: Row(
        //             children: [
        //               Icon(Icons.monetization_on_outlined),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Text(
        //                 'Liên hệ quảng cáo',
        //                 style: TextStyle(fontSize: 18, color: Colors.black),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ));
  }
}
