import 'package:flutter/material.dart';
import 'package:kiting/mainpages/homescreen.dart';
import 'package:kiting/mainpages/mylikescreen.dart';
import 'package:kiting/mainpages/myscreen.dart';
import 'package:kiting/mainpages/showgridscreen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<String> likedImages = [];
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      label: '홈',
      icon: Icon(Icons.home_filled),
    ),
    BottomNavigationBarItem(
      label: '모아보기',
      icon: Icon(Icons.grid_view),
    ),
    BottomNavigationBarItem(
      label: '내가 라이크 누른 것',
      icon: Icon(Icons.favorite),
    ),
    BottomNavigationBarItem(
      label: '내 페이지',
      icon: Icon(Icons.account_circle),
    ),
  ];
  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages = [
      HomeScreen(likedImages),
      ShowGridScreen(),
      MylikeScreen(likedImages),
      MyScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'KITing',
          style: TextStyle(
            fontFamily: 'NanumPenScript',
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: bottomItems,
      ),
      body: pages[_selectedIndex],
    );
  }
}
