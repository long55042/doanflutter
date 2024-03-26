import 'package:baicuoiki/bottom/circle_button.dart';
import 'package:baicuoiki/login/signin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  bool login = false;
  var email = TextEditingController();
  var password = TextEditingController();

  var displayName = TextEditingController();

  var currentPass = TextEditingController();
  var newPass = TextEditingController();
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        if (mounted) {
          setState(() {
            login = true;
          });
        }
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 15.0, 18.0, 0),
                child: Row(
                  children: [
                    CircleButton(
                      icon: Icons.arrow_back_ios,
                      onTap: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
                              child: Text(
                                'Thông tin cá nhân',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 355,
                      child: Divider(
                        height: 10,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
                              child: Text(
                                'Email:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 70,
                      width: 350,
                      decoration: ShapeDecoration(
                        color: Color(0xffD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                                FirebaseAuth.instance.currentUser!.email!),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
                          child: Text(
                            'Name:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 70,
                      width: 350,
                      decoration: ShapeDecoration(
                        color: Color(0xffD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: TextFormField(
                          controller: displayName,
                          decoration: InputDecoration(
                              hintText: FirebaseAuth
                                  .instance.currentUser!.displayName ??
                                  'Name'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
                          child: Text(
                            'Mật khẩu cũ:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 70,
                        width: 350,
                        decoration: ShapeDecoration(
                          color: Color(0xffD9D9D9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          obscureText: true,
                          controller: currentPass,
                          decoration:
                          const InputDecoration(
                              hintText: 'Current Password'
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
                          child: Text(
                            'Mật khẩu mới:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 70,
                      width: 350,
                      decoration: ShapeDecoration(
                        color: Color(0xffD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          obscureText: true,
                          controller: newPass,
                          decoration:
                          const InputDecoration(hintText: 'New Password'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                          onPressed: () async {
                            if (displayName.value.text.isNotEmpty) {
                              try {
                                await FirebaseAuth.instance.currentUser!
                                    .updateDisplayName(displayName.text);
                                if (!mounted) return;
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const LoginScreen()));
                              } catch (e) {
                                if (kDebugMode) {
                                  print(e);
                                }
                              }
                            }
                            if (currentPass.value.text.isNotEmpty &&
                                newPass.value.text.isNotEmpty) {
                              await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                  email: FirebaseAuth
                                      .instance.currentUser!.email!,
                                  password: currentPass.text);
                              await FirebaseAuth.instance.currentUser!
                                  .updatePassword(newPass.text);
                              if (!mounted) return;
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Update Success')));
                            }
                          },
                          child: const Text('UPDATE')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
