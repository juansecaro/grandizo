class LineElement < ApplicationRecord
  belongs_to :budget
  belongs_to :element

  before_validation :set_prices

  validates :quantity, presence: true, numericality: { greater_than: 0 }

  def set_prices
    return unless quantity && element

    self.unit_price = element.price_for(quantity)
    self.line_total = unit_price * quantity
  end
end
