import 'package:baicuoiki/home/information.dart';
import 'package:baicuoiki/login/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProFile extends StatefulWidget {
  const ProFile({Key? key}) : super(key: key);
  @override
  _ProFileState createState() => _ProFileState();
}

class _ProFileState extends State<ProFile> {
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance.currentUser!;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 320,
              width: 350,
              decoration: ShapeDecoration(
                color: Color(0xffD9D9D9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 8,
                          ),
                        ]
                    ),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Information()));
                          },
                              child: Image.asset(
                                'assets/images/hinh2.jpg',
                                width: 80,
                              ),
                        ),
                      ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        _auth.email!,
                        style: TextStyle( 
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(FirebaseAuth.instance.currentUser!.displayName ??
                          '',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Information()));
                        },
                        child: const Text(
                          "Exit profile",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.green,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/icon2.png'),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Feedback comments',
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      Container(
                        width: 355,
                        child: Divider(
                          height: 10,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/icon3.png'),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Membership registration',
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 85,
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      Container(
                        width: 355,
                        child: Divider(
                          height: 15,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/icon4.png'),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Introduce us',
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      Container(
                        width: 355,
                        child: Divider(
                          height: 10,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/icon5.png'),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Sing out',
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_sharp,
                              color: Colors.blue,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
