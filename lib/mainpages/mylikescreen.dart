import 'package:flutter/material.dart';
import 'package:kiting/mainpages/showgridscreen.dart';

class MylikeScreen extends StatefulWidget {
  final List<String> likedImages;

  MylikeScreen(this.likedImages);

  @override
  State<MylikeScreen> createState() => _MylikeScreenState();
}

class _MylikeScreenState extends State<MylikeScreen> {
  List<String> _likedImages = [];

  void _removeImage(BuildContext context, String imagePath) {
    setState(() {
      _likedImages.remove(imagePath);
    });
  }

  @override
  void initState() {
    super.initState();
    _likedImages = widget.likedImages;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Likes'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _likedImages.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(
                    _likedImages[index],
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.chat),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShowGridScreen(),
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          _removeImage(context, _likedImages[index]);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShowGridScreen()),
              );
            },
            child: Text('Chat'),
          ),
        ],
      ),
    );
  }
}