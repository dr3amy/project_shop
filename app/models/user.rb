class User < ApplicationRecord
  validates :email, :password, presence: true
  has_many :orders
end
