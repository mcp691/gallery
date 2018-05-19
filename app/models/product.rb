class Product < ApplicationRecord
  validates :name, :image_url, :category, :price, presence: true
end
