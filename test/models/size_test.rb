require 'test_helper'
require 'minitest/autorun'

describe Size do
  it 'must have size type' do
    _(Size.create(s_type: nil, size: 8).valid?).must_equal false
  end

  it 'must have size' do
    _(Size.create(s_type: 'some type', size: nil).valid?).must_equal false
  end
end
