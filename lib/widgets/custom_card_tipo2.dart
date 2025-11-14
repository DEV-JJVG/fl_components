import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  final String imageURL;
  const CustomCardTipo2({super.key, required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageURL),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 500),
          ),

          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 20),
            alignment: AlignmentDirectional.centerEnd,
            child: Text('Texto de ejemplo para la imagen'),
          ),
        ],
      ),
    );
  }
}
