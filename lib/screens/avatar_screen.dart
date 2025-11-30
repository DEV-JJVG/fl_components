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
            'https://m.media-amazon.com/images/I/71dx6t6FpuL._AC_UF894,1000_QL80_.jpg',
          ),
          maxRadius: 120,
        ),
      ),
    );
  }
}
