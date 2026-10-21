# Color Converter API - Ruby Gem

Color Converter translates color values across hex, RGB, CMYK, and named inputs into standard RGB formats and channel breakdowns. Paid plans expand output to include CMYK, HSL, ANSI 16-color codes, and recognized English color names.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_colorconverter'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_colorconverter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_colorconverter'

# Initialize the client
client = APIVerve::Colorconverter::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ hex: "FF0000" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ hex: "FF0000" })
  puts response["data"]
rescue APIVerve::Colorconverter::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Colorconverter::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Colorconverter::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/colorconverter?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/colorconverter?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/colorconverter?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
