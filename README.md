# PdfValidator

PDF/A Validation using Apache PDFbox (1.8.8).

## Installation

*Requires Java*

Add this line to your application's Gemfile:

```ruby
gem 'pdf_validator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pdf_validator

## Usage

```
  PdfValidator.validate(path_to_pdf)

  =>
  {
    valid: false,
    errors: ["array of errors"]
  }

  or

  {
    valid: true,
    error: nil
  }
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/pdf_validator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
