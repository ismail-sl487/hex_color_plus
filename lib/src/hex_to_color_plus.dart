import 'dart:ui';

/// Extension to allow hex string conversion into a Flutter [Color] object.
extension HexColor on Color {
  /// Converts a hex string like '#RRGGBB' or '#AARRGGBB' into a [Color].
  ///
  /// - Supports 6-digit RGB format (`#FFAA88`)
  /// - Supports 8-digit ARGB format (`#88FFAA00`) for alpha transparency
  /// - Returns white (`Color(0xFFFFFFFF)`) if parsing fails
  static Color hexToColor(String hexColor) {  
    try {
      var colorTemp = hexColor.replaceAll("#", ""); // Remove "#" if present

      // If length is <= 7, assume standard RGB format and prepend alpha FF
      if (hexColor.length <= 7){
        return Color(int.parse('0xFF$colorTemp'));
      }

      // Parse ARGB components from string
      int r = int.parse(colorTemp.substring(0, 2), radix: 16); // Red
      int g = int.parse(colorTemp.substring(2, 4), radix: 16); // Green
      int b = int.parse(colorTemp.substring(4, 6), radix: 16); // Blue
      int a = int.parse(colorTemp.substring(6, 8), radix: 16); // Alpha

      return Color.fromARGB(a, r, g, b);  
    } catch (e) {
      // Return default white color if parsing fails
      return const Color(0xFFFFFFFF);
    }
  } 
}
