class Size < ApplicationRecord
  validates :s_type, :size, presence: :true
  has_many :products
end
