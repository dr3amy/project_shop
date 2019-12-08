class Order < ApplicationRecord
  validates :user_id, presence: true
  belongs_to :user
  has_many :products, through: :orders_products
end

