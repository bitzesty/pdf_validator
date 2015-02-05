# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pdf_validator/version'

Gem::Specification.new do |spec|
  spec.name          = "pdf_validator"
  spec.version       = PdfValidator::VERSION
  spec.authors       = ["Matthew Ford"]
  spec.email         = ["matt@bitzesty.com"]
  spec.summary       = %q{PDF/A Validation using Apache PDFbox.}
  spec.description   = %q{PDF/A Validation using Apache PDFbox}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.post_install_message = "Requires java to run."

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
