// import 'package:baicuoiki/reading/baidoc.dart';
// import 'package:baicuoiki/reading/baidoc1.dart';
// import 'package:baicuoiki/reading/baidoc2.dart';
// import 'package:baicuoiki/reading/thegioi.dart';
// import 'package:flutter/material.dart';
//
// class Home extends StatefulWidget {
//   @override
//   static const routeName = '/Home';
//
//   const Home({super.key});
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> with TickerProviderStateMixin{
//   @override
//   Widget build(BuildContext context) {
//     // TabController _tabController = TabController(length: 3, vsync: this);
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 const SizedBox(
//                   height: 5,
//                 ),
//                  Container(
//                     // height: 150,
//                     // width: 500,
//                     decoration: const BoxDecoration(
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
//                         TextButton(
//                           onPressed: () {
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=> TheGioi()));
//                           },
//                           child: Image.asset(
//                             'assets/images/nen.jpg',
//                             width: 500,
//                             height: 250,
//                             fit: BoxFit.fitWidth,
//                             // height: 200,
//                             // width: 2000,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//
//                 const SizedBox(
//                   height: 15,
//                 ),
//                  Column(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
//                         child: TextButton(
//                           onPressed: () {
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=> TheGioi()));
//                           },
//                           child: Text(
//                             'VTV.vn - Vin Diesel đã đến bữa tiệc "Fast X" tại LA Live hôm thứ Năm (giờ Mỹ) cùng gia đình. '
//                                 '"Fast X" sẽ phát hành ngày 19/5 tới.',
//                             style: TextStyle(
//                               height: 1.5,
//                               fontSize: 18,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 Column(
//                   children: [
//                     const Padding(
//                       padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
//                       child: Text(
//                         'TIN TỨC',
//                         style: TextStyle(color: Colors.black26, fontSize: 20),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 13,
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Baidoc()));
//                   },
//                   child: Container(
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
//                       child: Row(
//                           children: [
//                             Image.asset(
//                               'assets/images/hinh1.jpg',
//                               width: 150,
//                               // height: 50,
//                             ),
//                             const SizedBox(
//                               width: 20,
//                             ),
//                             const Flexible(
//                                 child: Text(
//                                   'Móng cái boe xét nghệm COVID-19 người '
//                                       'qua cửa khẩu sang Trung Quốc từ 8-1',
//                                   style: TextStyle(
//                                     height: 2,
//                                     fontSize: 18,
//                                     color: Colors.black,
//                                   ),
//                                 ))
//                           ],
//                         ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   child: Padding(
//                     padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
//                     child: TextButton(
//                       onPressed: () {
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Baidoc1()));
//                       },
//                       child: Row(
//                         children: [
//                           Image.asset(
//                             'assets/images/hinh2.jpg',
//                             width: 150,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Flexible(
//                               child: Text(
//                                 'WHO kêu gọi các nước hành động ngay để giải quyết bệnh COVID-19 kéo dài',
//                                 style: TextStyle(
//                                   height: 2,
//                                   fontSize: 18,
//                                   color: Colors.black,
//                                 ),
//                               ))
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Container(
//                   child: Padding(
//                     padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
//                     child: TextButton(
//                       onPressed: () {
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Baidoc2()));
//                       },
//                       child: Row(
//                         children: [
//                           Image.asset(
//                             'assets/images/hinh3.jpg',
//                             width: 150,
//                             // height: 100,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Flexible(
//                               child: Text(
//                                 'Chiến lược truyền thống của Trung Quốc là lấn dần đất của láng giềng',
//                                 style: TextStyle(
//                                   height: 2,
//                                   fontSize: 18,
//                                   color: Colors.black,
//                                 ),
//                               ))
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//         ),
//       ),
//
//     );
//   }
// }
//
// // import 'package:baicuoiki/news/news.dart';
// // import 'package:baicuoiki/news/read_news.dart';
// // import 'package:baicuoiki/widget/primary_card.dart';
// // import 'package:flutter/material.dart';
// //
// // class Home extends StatelessWidget {
// //   const Home({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return ListView.builder(
// //       itemCount: trendingList.length,
// //       scrollDirection: Axis.vertical,
// //       shrinkWrap: true,
// //       physics: const BouncingScrollPhysics(),
// //       itemBuilder: (context, index) {
// //         var trending = trendingList[index];
// //
// //         return InkWell(
// //           onTap: () {
// //             Navigator.push(
// //               context,
// //               MaterialPageRoute(
// //                 builder: (context) => ReadNewsView(news: trending),
// //               ),
// //             );
// //           },
// //           child: Container(
// //             width: double.infinity,
// //             height: 300.0,
// //             margin: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
// //             child: PrimaryCard(news: trending),
// //           ),
// //         );
// //       },
// //     );
// //   }
// // }

import 'package:baicuoiki/news/news.dart';
import 'package:baicuoiki/news/read_news.dart';
import 'package:baicuoiki/widget/primary_card.dart';
import 'package:baicuoiki/widget/secondary_card.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  static const routeName = '/home';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 300.0,
          padding: const EdgeInsets.only(left: 15.0),
          child: ListView.builder(
            itemCount: homeList.length,
            scrollDirection: Axis.horizontal,
            // shrinkWrap: true,
            //
            itemBuilder: (context, index) {
              var news = homeList[index];
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
                'XEM NHIỀU',
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
          itemCount: trendingList.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (context, index) {
            var homew = trendingList[index];
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