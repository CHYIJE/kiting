import 'package:flutter/material.dart';
import 'package:kiting/mainpages/showgridscreen.dart';
import 'package:kiting/mainpages/mylikescreen.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> likedImages = [];
  List<String> imagePaths = [
    '0.jpg',
    '1.jpg',
    '2.jpg',
    '3.jpg',
    '4.jpg',
    '5.jpg',
  ];
  String firstImagePath = 'assets/image/man.jpg';
  String secondImagePath = '';

  String getRandomImagePath() {
    Random random = Random();
    int index = random.nextInt(imagePaths.length);
    String imagePath = 'assets/image/${imagePaths[index]}';
    return imagePath;
  }

  @override
  void initState() {
    super.initState();
    secondImagePath = getRandomImagePath();
  }

  void updateSecondImagePath() {
    String imagePath = getRandomImagePath();
    setState(() {
      secondImagePath = imagePath;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // 첫 번째 사진
                  Container(
                    width: 450, // 이미지의 고정된 너비
                    height: 450, // 이미지의 고정된 높이
                    child: Image.asset(
                      firstImagePath,
                      fit: BoxFit.contain, // 이미지의 비율을 유지한 채로 화면에 맞춤
                    ),
                  ),
                  // 두 번째 사진
                  Container(
                    width: 400, // 이미지의 고정된 너비
                    height: 400, // 이미지의 고정된 높이
                    child: Image.asset(
                      secondImagePath,
                      fit: BoxFit.contain, // 이미지의 비율을 유지한 채로 화면에 맞춤
                    ),
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
                  String imagePath = secondImagePath;
                  setState(() {
                    likedImages.add(imagePath);
                    updateSecondImagePath();
                  });
                },
                child: Text('Like'),
              ),
            ],
          ),
          if (likedImages.isNotEmpty)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: MylikeScreen(likedImages),
            ),
        ],
      ),
    );
  }
}