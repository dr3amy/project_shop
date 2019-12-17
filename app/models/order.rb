class Order < ApplicationRecord
  validates :user_id, presence: true
  belongs_to :user
  has_and_belongs_to_many :products
end

