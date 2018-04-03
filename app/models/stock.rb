class Stock < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_many :prices, through: :product
end


