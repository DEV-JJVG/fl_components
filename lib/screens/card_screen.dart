import 'package:fl_components/models/theme/app_theme.dart';
import 'package:fl_components/widgets/custom_card_tipo1.dart';
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
          children: [CustomCardTipo1()],
        ),
      ),
    );
  }
}
