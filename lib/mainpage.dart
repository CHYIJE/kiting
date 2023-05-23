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
  int _selectedIndex=0;
  List<BottomNavigationBarItem> bottomItems=[
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
  List pages=[
    HomeScreen(),
    ShowGridScreen(),
    MylikeScreen(),
    MyScreen(),
  ];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar:  AppBar(title: Text('KITing'),),
       bottomNavigationBar: BottomNavigationBar(
         type:  BottomNavigationBarType.fixed,
         backgroundColor: Colors.white, //bar 배경색
         selectedItemColor: Colors.black, // 선택된 색상
         unselectedItemColor: Colors.grey.withOpacity(.60),  //선택 안된거 색상
         selectedFontSize: 14,  //선택된거의 폰트 크기
         unselectedFontSize: 10, // 선택 안된거의 폰트 크기
         currentIndex: _selectedIndex,

         showSelectedLabels: false,    //라벨 안보이기
         showUnselectedLabels: false,

         onTap: (int index) {
           setState(() {
             _selectedIndex = index;
           });
         },
         items:bottomItems,
       ),
       body: pages[_selectedIndex],
     );
  }
}