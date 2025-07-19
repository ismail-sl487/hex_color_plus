import 'package:flutter/material.dart';
import 'package:hex_to_color_plus/hex_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HexToColorPlus Demo'),
        backgroundColor: HexColor.hexToColor('#0066CC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Basic Hex Color (#FFAA00)',
              style: TextStyle(
                color: HexColor.hexToColor('#FFAA00'),
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'ARGB Hex with Transparency (#80FF0000)',
              style: TextStyle(
                color: HexColor.hexToColor('#80FF0000'),
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Invalid Hex (fallback to white)',
              style: TextStyle(
                color: HexColor.hexToColor(''), 
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: double.infinity,
              color: HexColor.hexToColor('#3399FF'), 
              child: const Center(
                child: Text(
                  'Colored Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
