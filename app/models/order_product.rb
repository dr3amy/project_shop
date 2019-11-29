class OrderProduct < ApplicationRecord
  validates :order_id, :product_id, presence: true
  belongs_to :order
  has_many :products
end
