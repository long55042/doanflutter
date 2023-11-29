import 'package:baicuoiki/bottom/bottomMenu.dart';
import 'package:baicuoiki/model/home_screen.dart';
import 'package:baicuoiki/model/provider_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Homepage1 extends StatefulWidget {

  const Homepage1({Key? key}) : super(key: key);
  @override
  _Homepage1State createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider <NameProvider>(
      create: (context) => NameProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            primarySwatch: Colors.blue
        ),
          home: BottomNav(),
        ),
    );
  }
}