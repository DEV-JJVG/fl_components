import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 18;
  bool _checkedBoxValue = true;
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider & Checks')),
      body: Column(
        children: [
          Slider.adaptive(
            min: 18,
            max: 99,
            value: _sliderValue,
            onChanged: (_checkedBoxValue && _switchValue)
                ? (value) {
                    print(value);
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _checkedBoxValue,
                      onChanged: (value) {
                        _checkedBoxValue = value ?? true;
                        setState(() {});
                      },
                    ),
                    SizedBox(width: 10),
                    Text('Soy mayor de edad'),
                  ],
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 0.5,
                      child: Switch.adaptive(
                        value: _switchValue,
                        onChanged: (value) {
                          _switchValue = value;
                          setState(() {});
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('Soy mayor de edad'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
