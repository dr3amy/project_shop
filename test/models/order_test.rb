require 'test_helper'
require 'minitest/autorun'

describe Order do
  it 'must have user id' do
    _(Order.create(user_id: nil).valid?).must_equal false
  end
end
