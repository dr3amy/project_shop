class User < ApplicationRecord
  validates :email, :password, :town, :country, :address_line1, :postcode, presence: true
  has_many :orders
end
