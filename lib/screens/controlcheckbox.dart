import 'package:flutter/material.dart';

class ControlCheckbox extends StatefulWidget {
  const ControlCheckbox({
    Key? key,
  }) : super(key: key);

  @override
  State<ControlCheckbox> createState() => _ControlCheckboxState();
}

class _ControlCheckboxState extends State<ControlCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Checkbox(
        value: isChecked,
        onChanged: ((value) {
          setState(() {
            isChecked = value!;
          });
        }),
      )),
    );
  }
}
