import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _checkedBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider & Checks')),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            value: _sliderValue,
            onChanged: _checkedBoxValue
                ? (value) {
                    print(value);
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          Checkbox(
            value: _checkedBoxValue,
            onChanged: (value) {
              _checkedBoxValue = value ?? true;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
