import 'package:flutter/material.dart';

class ControlCheckbox extends StatefulWidget {
  const ControlCheckbox({
    Key? key,
  }) : super(key: key);

  @override
  State<ControlCheckbox> createState() => _ControlCheckboxState();
}

class _ControlCheckboxState extends State<ControlCheckbox> {
  bool option1 = false;
  bool option2 = false;
  double total = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Checkbox(
            value: option1,
            onChanged: ((value) {
              setState(() {
                option1 = value!;
                if (value) {
                  total += 10;
                } else {
                  total -= 10;
                }
              });
            }),
          ),
          Checkbox(
            value: option2,
            onChanged: ((value) {
              setState(() {
                option2 = value!;
                if (value) {
                  total += 20;
                } else {
                  total -= 20;
                }
              });
            }),
          ),
          Text('$total'),
        ],
      )),
    );
  }
}
