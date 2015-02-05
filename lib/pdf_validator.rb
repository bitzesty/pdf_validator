require 'pdf_validator/version'
require 'pry'

module PdfValidator
  def self.validate(file_path)
    preflight_path = File.expand_path('../preflight-app-1.8.8.jar', __FILE__)
    result = `java -jar #{preflight_path} #{file_path}`
    results = result.split("\n")

    valid = (result =~ /is not valid/).nil?

    {
      valid: valid,
      errors: valid ? nil : results[1..-1]
    }
  end
end
