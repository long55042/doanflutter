// import 'package:baicuoiki/home/home.dart';
// import 'package:baicuoiki/reading/baidoc.dart';
// import 'package:baicuoiki/reading/baidoc1.dart';
// import 'package:baicuoiki/reading/baidoc2.dart';
// import 'package:baicuoiki/reading/thegioi.dart';
// import 'package:flutter/material.dart';
//
// class Watch extends StatefulWidget {
//   @override
//   static const routeName = '/watch';
//   _WatchState createState() => _WatchState();
// }
//
// class _WatchState extends State<Watch> with TickerProviderStateMixin{
//
//   @override
//   Widget build(BuildContext context) {
//     TabController _tabController = TabController(length: 5, vsync: this);
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Color(0xffFF0000),
//       //   elevation: 2,
//       //   brightness: Brightness.light,
//       //   actions: [
//       //
//       //     Container(
//       //       height: 50,
//       //       child: Padding(
//       //         padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
//       //         // padding: const EdgeInsets.all(8.0),
//       //         child: Column(
//       //           children: [
//       //             DefaultTabController(
//       //               length: 2,
//       //               child: Expanded(
//       //                 child: Column(
//       //                   children: [
//       //                     const TabBar(
//       //                         indicatorColor: Color(0xff06AB8D),
//       //                         indicatorWeight: 2,
//       //                         unselectedLabelColor: Colors.black,
//       //                         isScrollable: true,
//       //                         labelStyle: TextStyle(fontSize: 14),
//       //                         labelColor: Color(0xff06AB8D),
//       //                         tabs: [
//       //                           Tab(
//       //                             text: "Trang chủ",
//       //                           ),
//       //                           Tab(
//       //                             text: "Xem nhiều",
//       //                           ),
//       //                           Tab(
//       //                             text: "Thời sự",
//       //                           ),
//       //                         ]),
//       //                     // SizedBox(
//       //                     //   height: 10,
//       //                     // ),
//       //                     Container(
//       //                       height: 5,
//       //                       // width: double.maxFinite,
//       //                       width: 50,
//       //                       child: TabBarView(
//       //                         controller: _tabController,
//       //                         children: [
//       //                           Home(),
//       //                           Watch(),
//       //                         ],
//       //                       ),
//       //                     ),
//       //                   ],
//       //                 ),
//       //               ),
//       //             ),
//       //           ],
//       //         ),
//       //       ),
//       //     ),
//       //   ],
//       // ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               SizedBox(
//                 height: 5,
//               ),
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=> Baidoc1()));
//                 },
//                  child: Container(
//                     // height: 150,
//                     // width: 500,
//                     decoration: BoxDecoration(
//                       boxShadow: <BoxShadow>[
//                         BoxShadow(
//                           color: Colors.black54,
//                           blurRadius: 20.0,
//                           offset: Offset(0, 4),
//                         )
//                       ],
//                     ),
//                     child: Column(
//                       children: [
//                         Image.asset(
//                           'assets/images/hinh2.jpg',
//
//                           width: 500,
//                           height: 250,
//                           fit: BoxFit.fitWidth,
//                           // height: 200,
//                           // width: 2000,
//                         ),
//                       ],
//                     ),
//                   ),
//                ),
//               SizedBox(
//                 height: 15,
//               ),
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=> Baidoc1()));
//                 },
//                 child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
//                         child: Text(
//                           'WHO kêu gọi các nước hành động ngay để giải quyết bệnh COVID-19 kéo dài',
//                           style: TextStyle(
//                             height: 1.5,
//                             fontSize: 18,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//               ),
//
//               SizedBox(
//                 height: 13,
//               ),
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=> Baidoc()));
//                 },
//                 child: Container(
//                   child: Padding(
//                     padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
//                     child: Row(
//                       children: [
//                         Image.asset(
//                           'assets/images/hinh1.jpg',
//                           width: 150,
//                           // height: 50,
//                         ),
//                         const SizedBox(
//                           width: 20,
//                         ),
//                         const Flexible(
//                             child: Text(
//                               'Móng cái boe xét nghệm COVID-19 người '
//                                   'qua cửa khẩu sang Trung Quốc từ 8-1',
//                               style: TextStyle(
//                                 height: 2,
//                                 fontSize: 18,
//                                 color: Colors.black,
//                               ),
//                             ))
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 child: Padding(
//                   padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=> TheGioi()));
//                     },
//                     child: Row(
//                       children: [
//                         Image.asset(
//                           'assets/images/nen.jpg',
//                           width: 150,
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Flexible(
//                             child: Text(
//                               'VTV.vn - Vin Diesel đã đến bữa tiệc "Fast X" tại LA Live hôm thứ Năm (giờ Mỹ) cùng gia đình. ',
//                               style: TextStyle(
//                                 height: 2,
//                                 fontSize: 18,
//                                 color: Colors.black,
//                               ),
//                             ))
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               Container(
//                 child: Padding(
//                   padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=> Baidoc2()));
//                     },
//                     child: Row(
//                       children: [
//                         Image.asset(
//                           'assets/images/hinh3.jpg',
//                           width: 150,
//                           // height: 100,
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Flexible(
//                             child: Text(
//                               'Chiến lược truyền thống của Trung Quốc là lấn dần đất của láng giềng',
//                               style: TextStyle(
//                                 height: 2,
//                                 fontSize: 18,
//                                 color: Colors.black,
//                               ),
//                             ))
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
// }

import 'package:baicuoiki/news/news.dart';
import 'package:baicuoiki/news/read_news.dart';
import 'package:baicuoiki/widget/primary_card.dart';
import 'package:baicuoiki/widget/secondary_card.dart';
import 'package:flutter/material.dart';


class Watch extends StatelessWidget {
  static const routeName = '/xem nhieu';
  const Watch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
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
                'THỜI SỰ',
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            ),
          ],
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
