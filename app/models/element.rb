class Element < ApplicationRecord
  has_many :line_elements
  has_many :budgets, through: :line_elements

  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
