import 'dart:ui';

extension HexColor on Color {
  static Color hexToColor(String hexColor) {  
    try {
      var colorTemp = hexColor.replaceAll("#", ""); // Hapus tanda #        
      if (hexColor.length <= 7){
        return Color(int.parse('0xFF$colorTemp'));
      }

      // Ambil komponen ARGB
      int r = int.parse(colorTemp.substring(0, 2), radix: 16); // Red
      int g = int.parse(colorTemp.substring(2, 4), radix: 16); // Green
      int b = int.parse(colorTemp.substring(4, 6), radix: 16); // Blue
      int a = int.parse(colorTemp.substring(6, 8), radix: 16); // Alpha

      return Color.fromARGB(a, r, g, b);  
    } catch (e) {
      return const Color(0xFFFFFFFF);
    }
  } 
}