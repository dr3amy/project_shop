class Size < ApplicationRecord
  validates :type, :size, presence: :true
  has_many :products
end
