class Product < ApplicationRecord
  validates :name, :price, :currency, :s_type, :size, presence: true
  belongs_to :size
end
