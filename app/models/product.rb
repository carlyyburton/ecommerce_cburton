class Product < ApplicationRecord
  belongs_to :category

  validates :name, presence: true

  paginates_per 8
end
