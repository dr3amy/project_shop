require 'test_helper'
require 'minitest/autorun'

describe User do
  it 'must have email' do
    _(User.create(email: nil, password: 'pass', town: 'town').valid?).must_equal false
  end

  it 'must have password' do
    _(User.create(email: "example@email.com", password: nil, town: 'town').valid?).must_equal false
  end

  it 'must have town' do
    _(User.create(email: "example@email.com", password: 'pass',
                  town: nil, country: 'country', address_line1: 'address', postcode: '000000').valid?).must_equal false
  end

  it 'must have country' do
    _(User.create(email: "example@email.com", password: 'pass',
                  town: 'town', country: nil, address_line1: 'address', postcode: '000000').valid?).must_equal false
  end

  it 'must have at least one address line' do
    _(User.create(email: "example@email.com", password: 'pass',
                  town: 'town', country: 'country', address_line1: nil, postcode: '000000').valid?).must_equal false
  end

  it 'must have postcode' do
    _(User.create(email: "example@email.com", password: 'pass',
                  town: 'town', country: 'country', address_line1: 'address', postcode: nil).valid?).must_equal false
  end
end

