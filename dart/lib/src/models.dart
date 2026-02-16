/// Response models for the Color Converter API.

/// API Response wrapper.
class ColorconverterResponse {
  final String status;
  final dynamic error;
  final ColorconverterData? data;

  ColorconverterResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory ColorconverterResponse.fromJson(Map<String, dynamic> json) => ColorconverterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ColorconverterData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Color Converter API.

class ColorconverterData {
  String? hex;
  String? rgb;
  String? hsl;
  String? cmyk;
  int? ansi16;
  String? name;
  ColorconverterDataChannels? channels;

  ColorconverterData({
    this.hex,
    this.rgb,
    this.hsl,
    this.cmyk,
    this.ansi16,
    this.name,
    this.channels,
  });

  factory ColorconverterData.fromJson(Map<String, dynamic> json) => ColorconverterData(
      hex: json['hex'],
      rgb: json['rgb'],
      hsl: json['hsl'],
      cmyk: json['cmyk'],
      ansi16: json['ansi16'],
      name: json['name'],
      channels: json['channels'] != null ? ColorconverterDataChannels.fromJson(json['channels']) : null,
    );
}

class ColorconverterDataChannels {
  int? rgbChannels;
  int? cmykChannels;
  int? ansiChannels;
  int? hexChannels;
  int? hslChannels;

  ColorconverterDataChannels({
    this.rgbChannels,
    this.cmykChannels,
    this.ansiChannels,
    this.hexChannels,
    this.hslChannels,
  });

  factory ColorconverterDataChannels.fromJson(Map<String, dynamic> json) => ColorconverterDataChannels(
      rgbChannels: json['rgbChannels'],
      cmykChannels: json['cmykChannels'],
      ansiChannels: json['ansiChannels'],
      hexChannels: json['hexChannels'],
      hslChannels: json['hslChannels'],
    );
}

class ColorconverterRequest {
  String hex;

  ColorconverterRequest({
    required this.hex,
  });

  Map<String, dynamic> toJson() => {
      'hex': hex,
    };
}
