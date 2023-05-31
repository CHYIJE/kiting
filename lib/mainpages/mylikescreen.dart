import 'package:flutter/material.dart';
import 'package:kiting/mainpages/showgridscreen.dart';

class MylikeScreen extends StatelessWidget {
  final List<String> likedImages;

  MylikeScreen(this.likedImages);

  void _removeImage(BuildContext context, String imagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Image'),
          content: Text('Are you sure you want to delete this image?'),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Delete'),
              onPressed: () {
                Navigator.of(context).pop(imagePath);
              },
            ),
          ],
        );
      },
    );
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
              itemCount: likedImages.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(
                    likedImages[index],
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      _removeImage(context, likedImages[index]);
                    },
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