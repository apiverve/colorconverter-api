Pod::Spec.new do |s|
  s.name             = 'APIVerveColorConverter'
  s.version          = '1.2.3'
  s.summary          = 'Color Converter translates color values across hex, RGB, CMYK, and named inputs into standard RGB formats and channel breakdowns.'
  s.description      = <<-'DESC'
Color Converter translates color values across hex, RGB, CMYK, and named inputs into standard RGB formats and channel breakdowns. Paid plans expand output to include CMYK, HSL, ANSI 16-color codes, and recognized English color names.

This iOS/macOS SDK provides a convenient way to access the Color Converter from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/colorconverter?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/colorconverter-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveColorConverter/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
