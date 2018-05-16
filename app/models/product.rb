class Product < ApplicationRecord
  validates :name, :image_url, :price, presence: true
end
