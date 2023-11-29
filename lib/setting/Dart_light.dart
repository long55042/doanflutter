
import 'package:baicuoiki/setting/CupertionSwichApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switcher_button/switcher_button.dart';

import 'ThemeModal.dart';

class DartLight extends StatefulWidget{
  // const DartLight({super.key});
  //
  // @override
  // State<DartLight> createState() => _DartLightState();
  @override
  _DartLightState createState() => _DartLightState();
}

class _DartLightState extends State{
  @override
  Widget build(BuildContext context){
    return Consumer(builder: (context, ThemeModal themeNotifier, child){
      return Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                child: Row(
                  children: [
                    Icon(Icons.add_alert),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Nhận thông báo',
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    SizedBox(
                      width: 120,
                    ),
                    CupertinoSwitchExample(),
                  ],
                ),
              ),
              Container(
                width: 455,
                child: Divider(
                  height: 5,
                  color: Colors.black45,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                child: Row(
                  children: <Widget> [
                    Text("Chế độ nền tối   ", style: TextStyle(fontSize: 18, color: Colors.black,), ),
                    SizedBox(
                      width: 165,
                    ),
                     SwitcherButton(
                        value: themeNotifier.isDark ? false : true,
                        onColor: Colors.red,
                        offColor: Colors.white,
                        size: 40,
                        onChange: (value){
                          themeNotifier.isDark
                          ? themeNotifier.isDark = false
                              : themeNotifier.isDark = true;
                        },
                    ),
                  ],
                ),
              ),
              Container(
                width: 455,
                child: Divider(
                  height: 5,
                  color: Colors.black45,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 17, 0, 17),
                child: Row(
                  children: [
                    Text(
                      'Kiểm tra phiên bản',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Text(
                      '4.32',
                      style: TextStyle(fontSize: 18, color: Colors.red),
                    ),
                  ],
                ),
              ),
              Container(
                width: 455,
                child: Divider(
                  height: 5,
                  color: Colors.black45,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                child: Row(
                  children: [
                    Icon(Icons.star_border),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Đánh giá app tuoitre.vn',
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                child: Row(
                  children: [
                    Icon(Icons.monetization_on_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Liên hệ quảng cáo',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}