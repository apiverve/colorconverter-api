# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_colorconverter"
  spec.version       = "1.2.2"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Color Converter API - Ruby Client"
  spec.description   = "Color Converter translates color values across hex, RGB, CMYK, and named inputs into standard RGB formats and channel breakdowns. Paid plans expand output to include CMYK, HSL, ANSI 16-color codes, and recognized English color names."
  spec.homepage      = "https://apiverve.com/marketplace/colorconverter?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/colorconverter-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/colorconverter"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
