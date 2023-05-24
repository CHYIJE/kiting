import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  List<String> _interests = [];

  TextEditingController _nameController = TextEditingController();
  TextEditingController _idController = TextEditingController();
  TextEditingController _studentIdController = TextEditingController();
  TextEditingController _birthdayController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _majorController = TextEditingController();
  TextEditingController _mbtiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('회원가입'),
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
    controller: _idController,
    decoration: InputDecoration(labelText: '아이디'),
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
    controller: _passwordController,
    decoration: InputDecoration(labelText: '비밀번호'),
    obscureText: true,
    ),
    TextField(
    controller: _confirmPasswordController,
    decoration: InputDecoration(labelText: '비밀번호 확인'),
    obscureText: true,
    ),
    TextField(
    controller: _majorController,
    decoration: InputDecoration(labelText: '학과'),
    ),
    TextField(
    controller: _mbtiController,
    decoration: InputDecoration(labelText: 'MBTI'),
    ),
    SizedBox(height: 16.0),
    Text('주관심사'),
    CheckboxListTile(
    title: Text('공부'),
    value: _interests.contains('공부'),
    onChanged: (value) {
    setState(() {
    if (value) {
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
    title: Text('게임'),
    value: _interests.contains('게임'),
    onChanged: (value) {
    setState(() {
    if (value) {
    if (!_interests.contains('게임')) {
    _interests.add('게임');
    }
    } else {
    _interests.remove('게임');
    }
    });
    },
    ),
    CheckboxListTile(
    title: Text('연애'),
    value: _interests.contains('연애'),
    onChanged: (value) {
    setState(() {
    if (value) {
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
    title: Text('술'),
    value: _interests.contains('술'),
    onChanged: (value) {
    setState(() {
    if (value) {
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
    title: Text('취업'),
    value: _interests.contains('취업'),
    onChanged: (value) {
    setState(() {
    if (value) {
    if (!_interests.contains('취업')) {
    _interests.add('취업');
    }
    } else {
    _interests.remove('취업');
    }
    });
    },
    ),