import 'package:baicuoiki/bottom/bottomMenu.dart';
import 'package:baicuoiki/bottom/circle_button.dart';
import 'package:baicuoiki/login/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;

  final TextEditingController _name = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _ComfitpasswordController =
      TextEditingController();

  // Future signup() async {
  //   if (passwordComfirmed()) {
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: _emailController.text.trim(),
  //         password: _passwordController.text.trim());
  //   }
  // }

  bool passwordComfirmed() {
    if (_passwordController.text.trim() ==
        _ComfitpasswordController.text.trim()) {
      return true;
    } else {
      print("mật khẩu không khớp");
      return (false);
    }
  }

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        //centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleButton(
                          icon: Icons.arrow_back,
                          onTap: () => Navigator.pop(context),
                        ),
                        const SizedBox(
                          width: 80,
                          // height: 15,
                        ),
                        const Text(
                          'Register',
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000),
                          ),
                          // textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 65,
                    ),

                    Form(
                        // key: _formKey,
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: TextField(
                            controller: _name,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(30),
                              labelText: "Name",
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.green),
                                  borderRadius: BorderRadius.circular(30)),
                              hintText: 'Nhập Name',
                              fillColor: Colors.grey[200],
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
                            controller: _emailController,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(30),
                              labelText: "Email",
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.green),
                                  borderRadius: BorderRadius.circular(30)),
                              hintText: 'Enter Email',
                              fillColor: Colors.grey[200],
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
                              labelText: "Mật khẩu",
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.green),
                                  borderRadius: BorderRadius.circular(30)),
                              hintText: 'Mật khẩu',
                              fillColor: Colors.grey[200],
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
                            controller: _ComfitpasswordController,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(30),
                              labelText: "Nhập lại mật khẩu",
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.green),
                                  borderRadius: BorderRadius.circular(30)),
                              hintText: 'Nhập lại mật khẩu',
                              fillColor: Colors.grey[200],
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
                              if (passwordComfirmed()) {
                                await FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                        email: _emailController.text.trim(),
                                        password: _passwordController.text)
                                    .then((value) {
                                  print("Created New Account");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const BottomNav()));
                                });
                              }
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
                                    "signup",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 20),
                        //   child: TextButton(
                        //     onPressed: () {
                        //       Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (context) => const BottomNav()));
                        //     },
                        //     child: GestureDetector(
                        //       onTap: signup,
                        //       child: Container(
                        //         padding: const EdgeInsets.all(20),
                        //         decoration: BoxDecoration(
                        //           color: Colors.red,
                        //           borderRadius: BorderRadius.circular(12),
                        //         ),
                        //         child: const Center(
                        //           child: Text(
                        //             'Sign In',
                        //             style: TextStyle(
                        //               color: Colors.black,
                        //               fontWeight: FontWeight.bold,
                        //               fontSize: 18,
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Container(
                          height: 50.0,
                          color: Colors.white,
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                            child: Row(
                              children: [
                                const Text(
                                  "Do you have an acount? ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Material(
                                    child: TextButton(
                                  onPressed: () {
                                    print("sign up tapped");
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen()));
                                  },
                                  child: Text(
                                    "Sing In",
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
                    // ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
