# Color Converter API - Dart/Flutter Client

Color Converter is a simple tool for converting color formats. It returns the color converted to the specified format.

[![pub package](https://img.shields.io/pub/v/apiverve_colorconverter.svg)](https://pub.dev/packages/apiverve_colorconverter)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Color Converter API](https://apiverve.com/marketplace/colorconverter?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_colorconverter: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_colorconverter/apiverve_colorconverter.dart';

void main() async {
  final client = ColorconverterClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'hex': 'FF0000'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "hex": "#FF0000",
    "rgb": "255, 0, 0",
    "hsl": "0, 100, 50",
    "cmyk": "0, 100, 100, 0",
    "ansi16": 91,
    "name": "red",
    "channels": {
      "rgbChannels": 3,
      "cmykChannels": 4,
      "ansiChannels": 1,
      "hexChannels": 1,
      "hslChannels": 3
    }
  }
}
```

## API Reference

- **API Home:** [Color Converter API](https://apiverve.com/marketplace/colorconverter?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/colorconverter](https://docs.apiverve.com/ref/colorconverter?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
