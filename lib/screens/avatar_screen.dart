import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatares'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Text('PB'),
              backgroundColor: Colors.greenAccent,
            ),
          ),
        ],
      ),
      body: Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            'https://i.pinimg.com/736x/9e/6d/7a/9e6d7a90230d7f2477c8413bdfc689ce.jpg',
          ),
          maxRadius: 120,
        ),
      ),
    );
  }
}
