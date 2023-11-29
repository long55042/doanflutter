
import 'package:baicuoiki/model/New.dart';
import 'package:baicuoiki/model/Screen.dart';
import 'package:baicuoiki/model/provider_items.dart';
import 'package:baicuoiki/news/news.dart';
import 'package:baicuoiki/news/read_news.dart';
import 'package:baicuoiki/widget/primary_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late NameProvider provider;

  Widget _buildBaidoc1(context) {
        return Column(
         children: [
          Row(
          children: provider.getBaidoc1DataList.map((baidoc1Data) {
            return Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Screen(),
                          ),
                        );
                      },
                      child: CardName(
                        image: baidoc1Data.image,
                        author: baidoc1Data.author,
                        category: baidoc1Data.category,
                        content: baidoc1Data.content,
                        title: baidoc1Data.title,
                        // onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
    //   }),
    // );
  }

  Widget _buildBaidoc2(context) {
    return Column(
      children: [
        Row(
          children: provider.getBaidoc2DataList.map((baidoc2Data) {
            return Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Screen(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          CardName(
                            image: baidoc2Data.image,
                            author: baidoc2Data.author,
                            category: baidoc2Data.category,
                            content: baidoc2Data.content,
                            title: baidoc2Data.title,
                            // onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
  Widget _buildBaidoc3(context) {
    return Column(
      children: [
        Row(
          children: provider.getBaidoc3DataList.map((baidoc3Data) {
            return Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Screen(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          CardName(
                            image: baidoc3Data.image,
                            author: baidoc3Data.author,
                            category: baidoc3Data.category,
                            content: baidoc3Data.content,
                            title: baidoc3Data.title,
                            // onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
  Widget _buildBaidoc4(context) {
    return Column(
      children: [
        Row(
          children: provider.getBaidoc4DataList.map((baidoc4Data) {
            return Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Screen(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          CardName(
                            image: baidoc4Data.image,
                            author: baidoc4Data.author,
                            category: baidoc4Data.category,
                            content: baidoc4Data.content,
                            title: baidoc4Data.title,
                            // onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  @override
  void initState() {
    NameProvider provider = Provider.of(context, listen: false);
    provider.fatchBaidoc1Data();
    provider.fatchBaidoc2Data();
    provider.fatchBaidoc3Data();
    provider.fatchBaidoc4Data();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    var baidoc2List;
    return Scaffold(
        body: Stack(children: [
          Padding(
              padding: EdgeInsets.all(20),
              child:
                  ListView(scrollDirection: Axis.vertical, children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 300.0,
                      padding: const EdgeInsets.only(left: 15.0),
                      child: ListView.builder(
                        itemCount: trendingList.length,
                        scrollDirection: Axis.horizontal,
                        // shrinkWrap: true,
                        //
                        itemBuilder: (context, index) {
                          var news = trendingList[index];
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
                            'TRANG CHỦ',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                      SizedBox(
                          height: 20
                      ),
                    Container(
                        child: _buildBaidoc1(context)
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    _buildBaidoc2(context),
                    SizedBox(
                      height: 15,
                    ),
                    _buildBaidoc3(context),
                    SizedBox(
                      height: 15,
                    ),
                    _buildBaidoc4(context),
              ]
                  )
          )
        ]
        )
    );
  }
}
