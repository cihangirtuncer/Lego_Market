import 'package:flutter/material.dart';

class ButtonPayment extends StatefulWidget {
  const ButtonPayment({Key? key}) : super(key: key);

  @override
  _ButtonPaymentState createState() => _ButtonPaymentState();
}

class _ButtonPaymentState extends State<ButtonPayment> {
  int _volume = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.remove_outlined),
          tooltip: 'Increase volume by 1',
          onPressed: () {
            setState(() {
              _volume -= 1;
            });
          },
        ),
        Text(
          'total: $_volume',
          style: TextStyle(fontSize: 18),
        ),
        IconButton(
          icon: const Icon(Icons.add_outlined),
          tooltip: 'Increase volume by 1',
          onPressed: () {
            setState(() {
              _volume += 1;
            });
          },
        ),
      ],
    );
  }
}
