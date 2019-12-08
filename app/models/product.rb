class Product < ApplicationRecord
  validates :name, :price, :currency, :s_type, :size, presence: true
  has_one :size
  belongs_to :order
end
