import 'package:baicuoiki/bottom/bottomMenu.dart';
import 'package:baicuoiki/bottom/drawer/drawer.dart';
import 'package:baicuoiki/news/news.dart';
import 'package:baicuoiki/news/read_news.dart';
import 'package:baicuoiki/widget/primary_card.dart';
import 'package:baicuoiki/widget/secondary_card.dart';
import 'package:flutter/material.dart';


class Thoisu extends StatelessWidget {
  static const routeName = '/thoisu';
  const Thoisu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //
      // ),
      // drawer: const NavBar(),
      body: ListView(
        children: [
          Container(

          ),
          Container(
            width: double.infinity,
            height: 300.0,
            padding: const EdgeInsets.only(left: 15.0),
            child: ListView.builder(
              itemCount: popularList.length,
              scrollDirection: Axis.horizontal,
              // shrinkWrap: true,
              //
              itemBuilder: (context, index) {
                var news = popularList[index];
                return Container(
                  width: 380,
                  height: 250.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReadNewsView(news: news),
                        ),
                      );
                    },
                    child: Container(
                      // decoration: const BoxDecoration(
                      //   boxShadow: <BoxShadow>[
                      //     BoxShadow(
                      //       color: Colors.grey,
                      //       blurRadius: 5.0,
                      //       offset: Offset(0, 3),
                      //     )
                      //   ],
                      // ),
                      margin: const EdgeInsets.only(right: 12.0),
                      child: PrimaryCard(news: news),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 25.0),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: Text(
                  'THỜI SỰ',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ),
            ],
          ),
          ListView.builder(
            itemCount: homeList.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              var homew = homeList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReadNewsView(news: homew),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 135.0,
                  margin: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                  child: SecondaryCard(news: homew ),
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: recentList.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              var recent = recentList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReadNewsView(news: recent),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 135.0,
                  margin: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                  child: SecondaryCard(news: recent),
                ),
              );
            },
          ),

        ],
      ),

    );
  }
}
