import 'package:fl_components/widgets/custom_card_tipo1.dart';
import 'package:fl_components/widgets/custom_card_tipo2.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            CustomCardTipo1(),
            SizedBox(height: 10),
            CustomCardTipo2(imageURL: 'warframe.jpg'),
            SizedBox(height: 10),
            CustomCardTipo2(imageURL: 'max_payne_3.jpg'),
            SizedBox(height: 10),
            CustomCardTipo2(imageURL: 'the_division2.jpg'),
            SizedBox(height: 10),
            CustomCardTipo2(imageURL: 'R6.jpg'),
            SizedBox(height: 10),
            CustomCardTipo2(imageURL: 'PEAK.jpg'),
          ],
        ),
      ),
    );
  }
}
