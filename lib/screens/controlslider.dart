import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ControlSlider extends StatefulWidget {
  const ControlSlider({Key? key}) : super(key: key);

  @override
  State<ControlSlider> createState() => _ControlSliderState();
}

class _ControlSliderState extends State<ControlSlider> {
  double valueSlide = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Slider(
          min: 0,
          max: 10,
          divisions: 5,
          value: valueSlide,
          onChanged: (value) {
            print(value);
            setState(() {
              valueSlide = value;
            });
          },
        )),
      ),
    );
  }
}
