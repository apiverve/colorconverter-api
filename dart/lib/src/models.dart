/// Response models for the Color Converter API.

/// API Response wrapper.
class ColorconverterResponse {
  final String status;
  final dynamic error;
  final ColorconverterData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  ColorconverterResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory ColorconverterResponse.fromJson(Map<String, dynamic> json) => ColorconverterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ColorconverterData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Color Converter API.

class ColorconverterData {
  String? hex;
  String? rgb;
  String? hsl;
  String? cmyk;
  num? ansi16;
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
  num? rgbChannels;
  num? cmykChannels;
  num? ansiChannels;
  num? hexChannels;
  num? hslChannels;

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
