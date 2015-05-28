require 'spec_helper'
require 'cupatino_product_names'

describe CupatinoProductNames do
  it 'has a version number' do
    expect(CupatinoProductNames::VERSION).not_to be nil
  end

  describe '#to_product_name' do
    it 'convert model identifier to product name' do
      expect("iPhone7,1".to_product_name).to eq("iPhone 6 Plus")
    end

    it 'convert unknown identifier to nil' do
      expect("iPad100,0".to_product_name).to be_nil
    end
  end

end
