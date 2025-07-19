# Hex Color Plus

A Flutter plugin to convert hex string values into `Color` objects—supporting both standard 6-digit hex codes (`#RRGGBB`) and extended 8-digit hex codes with alpha transparency (`#AARRGGBB`).

> 🎨 Whether you're working with basic hex like `#FFFFFF` or want fine control with `#80FFAA33`, `HexColorPlus` makes it simple and flexible.

---

## ✨ Features

- Convert hex string (`#RRGGBB`) to `Color` ✔️  
- Support 8-digit ARGB hex (`#AARRGGBB`) for alpha channel ✔️  
- Graceful fallback in case of invalid hex input ✔️  
- Works seamlessly with Flutter's `Color` class ✔️  

---

## 🔧 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  hex_color_plus: ^1.0.0


```

## 🚀 Usage


```import 'package:hex_color_plus/hex_color_plus.dart';

void main() {
  // Convert standard 6-digit hex (RRGGBB)
  Color basic = HexColor.hexToColor("#FFAA88");

  // Convert extended 8-digit hex (AARRGGBB with transparency)
  Color withAlpha = HexColor.hexToColor("#88FFAA00");

  print(basic);        // Output: Instance of Color
  print(withAlpha);    // Output: Instance of Color with transparency
}

```


## ✅ Supported formats:

#RRGGBB → basic opaque colors

#AARRGGBB → colors with alpha transparency

---

### 📜 License
This plugin is licensed under the MIT License.
