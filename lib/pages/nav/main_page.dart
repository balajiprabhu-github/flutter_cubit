import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/pages/nav/HomePage.dart';
import 'package:flutter_cubit/pages/nav/bar_item_page.dart';
import 'package:flutter_cubit/pages/nav/my_page.dart';
import 'package:flutter_cubit/pages/nav/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage()
  ];

  int currentIndex = 0;

  void onTabTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTabTap,
        selectedFontSize: 0,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 2,
        items: const [
          BottomNavigationBarItem( label: "Home",icon: Icon(Icons.home)),
          BottomNavigationBarItem( label: "Bar",icon: Icon(Icons.bar_chart)),
          BottomNavigationBarItem( label: "Search",icon: Icon(Icons.search)),
          BottomNavigationBarItem( label: "MyPage",icon: Icon(Icons.person))
        ],
      ),
    );
  }
}
