class Product < ApplicationRecord
  belongs_to :category

  validates :name, :brand, :price, presence: true

  paginates_per 8
end
