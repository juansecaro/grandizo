class Budget < ApplicationRecord
  has_many :line_elements
  has_many :elements, through: :line_elements

  validates :client_name, presence: true 

  def total
    line_elements.includes(:element).sum { |line| line.element.price * line.quantity }
  end

  # Método para añadir elementos (asegúrate de que está así)
  def add_element(element_id, quantity = 1)
    line_elements.create(element_id: element_id, quantity: quantity)
  end
end
