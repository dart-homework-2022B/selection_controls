import 'package:flutter/material.dart';

class ControlRadio extends StatefulWidget {
  const ControlRadio({Key? key}) : super(key: key);

  @override
  State<ControlRadio> createState() => _ControlRadioState();
}

class _ControlRadioState extends State<ControlRadio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Radio(
            value: 1,
            groupValue: 'size',
            onChanged: (value) {
              print(value);
            },
          ),
          Radio(
            value: 2,
            groupValue: 'size',
            onChanged: (value) {
              print(value);
            },
          ),
        ],
      ),
    ));
  }
}
