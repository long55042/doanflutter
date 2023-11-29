import 'package:baicuoiki/bottom/bottomMenu.dart';
import 'package:baicuoiki/home/homeview.dart';
import 'package:baicuoiki/home/thoisu.dart';
import 'package:baicuoiki/login/signin.dart';
import 'package:baicuoiki/setting/setting.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
              child: ListView(
                // Remove padding
                padding: EdgeInsets.zero,
                children: [
                  UserAccountsDrawerHeader(
                    accountName: const Text('Huy Long'),
                    accountEmail: const Text('Huylong@gmail.com'),
                    currentAccountPicture: CircleAvatar(
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.cover,
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home_outlined),
                    title: const Text('Trang chủ'),
                    onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const BottomNav())),
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Xem nhiều'),
                    onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const BottomNav())),
                  ),
                  ListTile(
                    leading: const Icon(Icons.share),
                    title: const Text('thoisu'),
                    onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Thoisu())),
                  ),
                  ListTile(
                    leading: const Icon(Icons.video_collection),
                    title: const Text('Video'),
                    onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const BottomNav())),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Exit'),
                    leading: const Icon(Icons.exit_to_app),
                    onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LoginScreen())),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}


