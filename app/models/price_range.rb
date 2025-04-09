class PriceRange < ApplicationRecord
  belongs_to :element
  validates :min_quantity, :price, presence: true
end
