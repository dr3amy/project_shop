class Product < ApplicationRecord
  validates :name, :price, :size_id, presence: true
  has_one :size
  belongs_to :order_product
end
