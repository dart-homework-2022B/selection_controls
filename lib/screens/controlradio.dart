import 'package:flutter/material.dart';

class ControlRadio extends StatefulWidget {
  const ControlRadio({Key? key}) : super(key: key);

  @override
  State<ControlRadio> createState() => _ControlRadioState();
}

class _ControlRadioState extends State<ControlRadio> {
  String? group;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          RadioListTile(
            title: Text('Small'),
            value: 'small',
            groupValue: group,
            onChanged: (value) {
              setState(() {
                group = value.toString();
              });
            },
          ),
          RadioListTile(
            title: Text('Katta'),
            value: 'large',
            groupValue: group,
            onChanged: (value) {
              setState(() {
                group = value.toString();
              });
            },
          ),
        ],
      ),
    ));
  }
}
