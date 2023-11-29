import 'package:baicuoiki/bottom/drawer/drawer.dart';
import 'package:baicuoiki/home/favorite.dart';
import 'package:baicuoiki/home/frofile.dart';
import 'package:baicuoiki/home/homeview.dart';
import 'package:baicuoiki/home/xemnhieu.dart';
import 'package:baicuoiki/model/Seach.dart';
import 'package:baicuoiki/model/provider_items.dart';
import 'package:baicuoiki/setting/Dart_light.dart';
import 'package:baicuoiki/setting/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late NameProvider provider;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _bottomNavView = [
    const HomeView(),
    // const Favorite(),
    // DartLight(),
    const SettingsPage(),
    const ProFile(),
  ];

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //     backgroundColor: const Color(0xffF00000),
      //     elevation: 2,
      //     brightness: Brightness.light,
      //   actions: const [
      //     Icon(Icons.saved_search),
      //   ],
      // ),
      drawer: const NavBar(),
      appBar: AppBar(
            backgroundColor: const Color(0xffF00000),
            elevation: 2,
            brightness: Brightness.light,
        actions: [
          TextButton( onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => const ProFile()));
            },
            child: Icon(Icons.perm_contact_calendar_outlined, color: Colors.white,),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.white70,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            Search(search: provider.gerAllNameSearch),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: _bottomNavView.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,

        items: _navBarList
            .map(
              (e) => BottomNavigationBarItem(
            icon: SvgPicture.asset(
              e.icon,
              width: 24.0,
            ),
            label: 'title',
            activeIcon: SvgPicture.asset(
              e.activeIcon,
              width: 24.0,
            ),
            // title: Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text(e.title),
            // ),
          ),
        )
            .toList(),
      ),

    );
  }
}

class NavBarItem {
  final String icon;
  final String activeIcon;
  final String title;
  NavBarItem({required this.icon, required this.activeIcon, required this.title});
}

List<NavBarItem> _navBarList = [
  NavBarItem(
    icon: "assets/icon/home.svg",
    activeIcon: "assets/icon/home_2.svg",
    title: "Home",
  ),
  // NavBarItem(
  //   icon: "assets/icon/favorite.svg",
  //   activeIcon: "assets/icon/favorite_2.svg",
  //   title: "Xem nhieu",
  // ),
  NavBarItem(
    icon: "assets/icon/setting.svg",
    activeIcon: "assets/icon/setting_2.svg",
    title: "Account",
  ),
  NavBarItem(
    icon: "assets/icon/account.svg",
    activeIcon: "assets/icon/account_2.svg",
    title: "Favorite",
  ),
];
