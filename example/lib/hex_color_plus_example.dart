import 'package:flutter/material.dart';
import 'package:hex_to_color/hex_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text(
          'Hello World!!',
          style: TextStyle(color: HexColor.hexToColor('')),
        ),
      ]),
    );
  }
}