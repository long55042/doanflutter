// import 'package:baicuoiki/bottom/bottomMenu.dart';
// import 'package:baicuoiki/bottom/drawer/drawer.dart';
import 'package:baicuoiki/home/home.dart';
import 'package:baicuoiki/home/thoisu.dart';
import 'package:baicuoiki/home/video.dart';
import 'package:baicuoiki/model/home_screen.dart';
import 'package:baicuoiki/news/constant.dart';
import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
       length: 4,
      child: Scaffold(
        body: Column(
          children: [
            DefaultTabController(
              length: 4,
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      PreferredSize(
                        preferredSize: const Size.fromHeight(120.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: TabBar(
                                labelColor: Colors.red,
                                unselectedLabelColor: Colors.black,
                                unselectedLabelStyle: kNonActiveTabStyle,
                                indicatorSize: TabBarIndicatorSize.label,
                                isScrollable: true,
                                indicatorColor: const Color(0xff06AB8D),
                                labelStyle: kActiveTabStyle.copyWith(fontSize: 25.0),
                                tabs: const [
                                  // const Tab(icon: Icon(Icons.dehaze_outlined),),
                                  // Scaffold(
                                  //   drawer: NavBar(),
                                  // ),
                                  Tab(text: "Home"),
                                  Tab(text: "xem nhieu"),
                                  Tab(text: "video",),
                                  Tab(text: "thoi su"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 500,
                        child: TabBarView(
                          children: [
                            HomeScreen(),
                            Home(),
                            // Homepage1(),
                            // Watch(),
                            Video(),
                            Thoisu(),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        // TabBarView(
        //   children: [
        //     // const NavBar(),
        //     const Home(),
        //     Watch(),
        //     Video(),
        //     const Thoisu(),
        //
        //   ],
        // ),
      ),
    );
  }
}
