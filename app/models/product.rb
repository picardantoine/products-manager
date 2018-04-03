class Product < ApplicationRecord
  has_many :stocks
  has_many :prices
end
