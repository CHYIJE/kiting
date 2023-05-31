import 'package:flutter/material.dart';
import 'package:kiting/mainpages/showgridscreen.dart';
import 'package:kiting/mainpages/mylikescreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // 첫 번째 사진
              Image.asset(
                'assets/image/man.jpg',
                width: 400 , // 원하는 너비로 조정
                height: 500, // 원하는 높이로 조정
              ),
              // 두 번째 사진
              Image.asset(
                'assets/image/girl.jpg',
                width: 400, // 원하는 너비로 조정
                height: 500, // 원하는 높이로 조정
              ),
            ],
          ),
          SizedBox(height: 50), // 사진과 버튼 사이의 간격 조절을 위한 SizedBox 추가
          // chat 버튼
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShowGridScreen()),
              );
            },
            child: Text('Chat'),
          ),
          SizedBox(height: 20), // 버튼과 버튼 사이의 간격 조절을 위한 SizedBox 추가
          // like 버튼
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MylikeScreen()),
              );
            },
            child: Text('Like'),
          ),
        ],
      ),
    );
  }
}