require 'test_helper'
require 'minitest/autorun'

describe Product do
  it 'must have name' do
    _(Product.create(name: nil, price: 119.99, size_id: 'size_id').valid?).must_equal false
  end

  it 'must have price' do
    _(Product.create(name: 'some name', price: nil, size_id: 'size_id').valid?).must_equal false
  end

  it 'must have size id' do
    _(Product.create(name: nil, price: 119.99, size_id: nil).valid?).must_equal false
  end
end
