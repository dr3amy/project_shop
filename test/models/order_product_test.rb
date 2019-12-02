require 'test_helper'
require 'minitest/autorun'

describe OrderProduct do
  it 'must have order id' do
    _(OrderProduct.create(order_id: nil, product_id: 1).valid?).must_equal false
  end

  it 'must have product id' do
    _(OrderProduct.create(order_id: 1, product_id: nil).valid?).must_equal false
  end
end
