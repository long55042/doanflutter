// import 'package:baicuoiki/bottom/drawer/drawer.dart';
// import 'package:baicuoiki/reading/baidoc.dart';
// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
// class Video extends StatefulWidget {
//   @override
//   static const routeName = '/video';
//
//   const Video({super.key});
//   _VideoState createState() => _VideoState();
// }
//
// class _VideoState extends State<Video > {
//   final FlickManager flickManager = FlickManager(videoPlayerController: VideoPlayerController.asset('assets/video/video2.mp4'),);
//   final FlickManager flickManager1 = FlickManager(videoPlayerController: VideoPlayerController.asset('assets/video/video1.mp4'),);
//   final FlickManager flickManager2 = FlickManager(videoPlayerController: VideoPlayerController.asset('assets/video/video3.mp4'),);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const NavBar(),
//       body:  SingleChildScrollView(
//         child: Column(
//           children: [
//             // Container(
//             //   height: 250,
//             //   width: 350,
//             //   child: AspectRatio(
//             //     aspectRatio: 16 / 9,
//             //     child: FlickVideoPlayer(flickManager: flickManager,),
//             //   ),
//             // ),
//           Expanded(
//             child: AspectRatio(
//                   aspectRatio: 16 / 9,
//                   child: FlickVideoPlayer(flickManager: flickManager,),
//                 ),
//           ),
//            const SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.of(context)
//                       .pushReplacementNamed(Baidoc.routeName);
//                 },
//                 child: Row(
//                   children: const [
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Flexible(
//                         child: Text(
//                           'Thời sự quốc tế 27-2 - Kiev tiếp tục bị không kích, 2 căn cứ quân sự bị phá hủy',
//                           style: TextStyle(
//                             height: 2,
//                             fontSize: 18,
//                             color: Colors.black,
//                           ),
//                         ))
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             Expanded(
//               child: AspectRatio(
//                 aspectRatio: 16 / 9,
//                 child: FlickVideoPlayer(flickManager: flickManager1,),
//               ),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.of(context)
//                       .pushReplacementNamed(Baidoc.routeName);
//                 },
//                 child: Row(
//                   children: const [
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Flexible(
//                         child: Text(
//                           'Tin tức an ninh trật tự nóng, thời sự Việt Nam mới nhất 24h trưa 17/2',
//                           style: TextStyle(
//                             height: 2,
//                             fontSize: 18,
//                             color: Colors.black,
//                           ),
//                         ))
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             Expanded(
//               child: AspectRatio(
//                 aspectRatio: 16 / 9,
//                 child: FlickVideoPlayer(flickManager: flickManager2,),
//               ),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
//                 child: TextButton(
//                   onPressed: () {
//                     Navigator.of(context)
//                         .pushReplacementNamed(Baidoc.routeName);
//                   },
//                   child: Row(
//                     children: [
//                       AspectRatio(
//                         aspectRatio: 3,
//                         child: FlickVideoPlayer(flickManager: flickManager,),
//                       ),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       const Flexible(
//                           child: Text(
//                             'Việt Nam rút ngắn thời gian xét nghiệm virus corona mới | VTV24',
//                             style: TextStyle(
//                               height: 2,
//                               fontSize: 18,
//                               color: Colors.black,
//                             ),
//                           ))
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:baicuoiki/bottom/drawer/drawer.dart';
import 'package:baicuoiki/reading/baidoc.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  @override
  static const routeName = '/video';

  const Video({super.key});
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  final FlickManager flickManager = FlickManager(
    videoPlayerController:
        VideoPlayerController.asset('assets/video/video2.mp4'),
  );
  final FlickManager flickManager1 = FlickManager(
    videoPlayerController:
        VideoPlayerController.asset('assets/video/video1.mp4'),
  );
  final FlickManager flickManager2 = FlickManager(
    videoPlayerController:
        VideoPlayerController.asset('assets/video/video3.mp4'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      body: Column(
          children: [
             Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: FlickVideoPlayer(
                          flickManager: flickManager,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(Baidoc.routeName);
                          },
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 20,
                              ),
                              Flexible(
                                  child: Text(
                                'Thời sự quốc tế 27-2 - Kiev tiếp tục bị không kích, 2 căn cứ quân sự bị phá hủy',
                                style: TextStyle(
                                  height: 2,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: FlickVideoPlayer(
                          flickManager: flickManager1,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(Baidoc.routeName);
                          },
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 20,
                              ),
                              Flexible(
                                  child: Text(
                                    'Tin tức an ninh trật tự nóng, thời sự Việt Nam mới nhất 24h trưa 17/2',
                                    style: TextStyle(
                                      height: 2,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: FlickVideoPlayer(
                          flickManager: flickManager2,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(Baidoc.routeName);
                          },
                          child: Row(
                            children: const [
                              Flexible(
                                  child: Text(
                                    'Việt Nam rút ngắn thời gian xét nghiệm virus corona mới | VTV24',
                                    style: TextStyle(
                                      height: 2,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  )
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
    );
  }
}
