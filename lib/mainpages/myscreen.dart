import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _idController = TextEditingController();
  TextEditingController _studentIdController = TextEditingController();
  TextEditingController _birthdayController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _majorController = TextEditingController();
  TextEditingController _mbtiController = TextEditingController();
  List<String> _interests = [];

  @override
  void initState() {
    super.initState();
    // 기존 회원 정보를 컨트롤러에 설정 GN 다음과 같이 초기값을 설정.
    _nameController.text = "최이제";
    _studentIdController.text = "20131086";
    _birthdayController.text = "940130";
    _majorController.text = "컴퓨터공학과";
    _mbtiController.text = "INFP";
  }

  @override
  void dispose() {
    // 페이지가 dispose될 때 컨트롤러들을 정리.
    _nameController.dispose();
    _idController.dispose();
    _studentIdController.dispose();
    _birthdayController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _majorController.dispose();
    _mbtiController.dispose();
    super.dispose();
  }

  void _saveChanges() {
    // 변경된 회원 정보를 저장하는 로직을 구현 못하겠음
    // 각 컨트롤러에서 .text를 통해 변경된 값에 접근할 수 있음요.
    String newName = _nameController.text;
    String newId = _idController.text;
    String newStudentId = _studentIdController.text;
    String newBirthday = _birthdayController.text;
    String newPassword = _passwordController.text;
    String newConfirmPassword = _confirmPasswordController.text;
    String newMajor = _majorController.text;
    String newMbti = _mbtiController.text;

    // 저장 로직 작성 후 필요한 동작 수행
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('내 정보 수정'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: '이름'),
            ),
            TextField(
              controller: _studentIdController,
              decoration: InputDecoration(labelText: '학번'),
            ),
            TextField(
              controller: _birthdayController,
              decoration: InputDecoration(labelText: '생년월일'),
            ),

            TextField(
              controller: _mbtiController,
              decoration: InputDecoration(labelText: 'MBTI'),
            ),
            TextField(
              controller: _majorController,
              decoration: InputDecoration(labelText: '학과'),
            ),
            SizedBox(height: 16.0),
            Text('주관심사'),
            CheckboxListTile(
              title: Text('공부'),
              value: _interests.contains('공부'),
              onChanged: (value) {
                setState(() {
                  if (value!) {
                    if (!_interests.contains('공부')) {
                      _interests.add('공부');
                    }
                  } else {
                    _interests.remove('공부');
                  }
                });
              },
            ),
            CheckboxListTile(
              title: Text('연애'),
              value: _interests.contains('연애'),
              onChanged: (value) {
                setState(() {
                  if (value!) {
                    if (!_interests.contains('연애')) {
                      _interests.add('연애');
                    }
                  } else {
                    _interests.remove('연애');
                  }
                });
              },
            ),
            CheckboxListTile(
              title: Text('식사'),
              value: _interests.contains('식사'),
              onChanged: (value) {
                setState(() {
                  if (value!) {
                    if (!_interests.contains('식사')) {
                      _interests.add('식사');
                    }
                  } else {
                    _interests.remove('식사');
                  }
                });
              },
            ),
            CheckboxListTile(
              title: Text('술'),
              value: _interests.contains('술'),
              onChanged: (value) {
                setState(() {
                  if (value!) {
                    if (!_interests.contains('술')) {
                      _interests.add('술');
                    }
                  } else {
                    _interests.remove('술');
                  }
                });
              },
            ),
            CheckboxListTile(
              title: Text('게임'),
              value: _interests.contains('게임'),
              onChanged: (value) {
                setState(() {
                  if (value!) {
                    if (!_interests.contains('게임')) {
                      _interests.add('게임');
                    }
                  } else {
                    _interests.remove('게임');
                  }
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _saveChanges,
              child: Text('저장'),
            ),
          ],
        ),
      ),
    );
  }
}