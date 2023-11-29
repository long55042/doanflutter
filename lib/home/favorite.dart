
import 'package:baicuoiki/news/news.dart';
import 'package:baicuoiki/news/read_news.dart';
import 'package:baicuoiki/widget/secondary_card.dart';
import 'package:flutter/material.dart';


class Favorite extends StatelessWidget {
  static const routeName = '/xem';
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // const SizedBox(
        //   height: 30,
        // ),
        Container(
          width: double.infinity,
          height: 30.0,
          margin: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
          child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Text(
                    'TIN MỚI XEM',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                ),
              ],
            ),
        ),
        const SizedBox(
          height: 30,
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
      ],
    );
  }
}
