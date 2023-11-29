import 'package:baicuoiki/bottom/bottomMenu.dart';
import 'package:baicuoiki/login/register.dart';
import 'package:baicuoiki/model/home_screen.dart';
import 'package:baicuoiki/model/home_view.dart';
import 'package:baicuoiki/model/provider_items.dart';
import 'package:baicuoiki/setting/ThemeModal.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const routeName = '/login';
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<LoginScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final widgetList = [
      const Center(
        child: Text(
          'Đăng Nhập',
          style: TextStyle(
            fontFamily: 'Satoshi',
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Color(0xff000000),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      const SizedBox(
        height: 170,
      ),
      Form(
          // key: _formKey,
          child: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(30),
                labelText: "Email",
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(30)),
                hintText: 'Email',
                fillColor: Colors.grey,
                filled: true,
              ),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              obscureText: true,
              controller: _passwordController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(30),
                labelText: "password",
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(30)),
                hintText: 'Password',
                fillColor: Colors.grey,
                filled: true,
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: TextButton(
              onPressed: () async {
                FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text)
                    .then((value) {
                  print("Login success");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage1(),));
                }).onError((error, stackTrace) {
                  print("Error ${(error.toString())}");
                });
              },
              child: Container(
                alignment: Alignment.center,
                child: Ink(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Đăng Nhập",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 50.0,
            decoration: ShapeDecoration(
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
              child: Row(
                children: [
                  const Text(
                    "Bạn chưa có tài khoản ?  ",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Material(
                      child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    },
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  )),
                ],
              ),
            )),
          ),
        ],
      )),
      const SizedBox(
        height: 10.0,
      ),
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      // bottomNavigationBar: const BottomNav(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(),
                  gradient: LinearGradient(
                      colors: <Color>[Color(0xff191A19), Color(0xff191A19)])),
              height: 25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return widgetList[index];
          }, childCount: widgetList.length))
        ],
      ),
    );
  }
}
