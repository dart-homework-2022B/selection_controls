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
          value: valueSlide,
          onChanged: (value) {
            setState(() {
              valueSlide = value;
            });
          },
        )),
      ),
    );
  }
}
