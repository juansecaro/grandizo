class LineElement < ApplicationRecord
  belongs_to :budget
  belongs_to :element

  validates :quantity, presence: { message: "no puede estar en blanco" }
  validates :quantity, numericality: { greater_than: 0 }

  def line_total
    element.price * quantity
  end
end
