require 'spec_helper'

describe PdfValidator do
  it 'has a version number' do
    expect(PdfValidator::VERSION).not_to be nil
  end

  it 'detects a non valid pdf' do
    test_file = File.expand_path('../test.pdf', __FILE__)
    expect(PdfValidator.validate(test_file))
      .to eq(valid: false,
             errors: ['1.0.14 : Syntax error, Object {8:0} has an offset of 0',
                      '7.1 : Error on MetaData, Missing Metadata Key in catalog'
                     ]
            )
  end

  # From: http://acroeng.adobe.com/wp/?page_id=287
  it 'allows a valid pdf' do
    test_file = File.expand_path('../ADEX1_A1b.pdf', __FILE__)
    expect(PdfValidator.validate(test_file))
      .to eq(valid: true,
             errors: nil
            )
  end
end
