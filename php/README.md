# Color Converter API - PHP Package

Color Converter is a simple tool for converting color formats. It returns the color converted to the specified format.

## Installation

Install via Composer:

```bash
composer require apiverve/colorconverter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Colorconverter\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['hex' => 'FF0000']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Colorconverter\Client;
use APIVerve\Colorconverter\Exceptions\APIException;
use APIVerve\Colorconverter\Exceptions\ValidationException;

try {
    $response = $client->execute(['hex' => 'FF0000']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/colorconverter?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/colorconverter?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/colorconverter?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
