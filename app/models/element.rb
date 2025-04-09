class Element < ApplicationRecord
  has_many :line_elements
  has_many :budgets, through: :line_elements
  has_many :price_ranges, dependent: :destroy
  accepts_nested_attributes_for :price_ranges, allow_destroy: true, reject_if: :all_blank

  validates :name, presence: true

  def price_for(quantity)
    range = price_ranges
              .select { |pr| pr.min_quantity <= quantity && (pr.max_quantity.nil? || quantity <= pr.max_quantity) }
              .sort_by(&:min_quantity)
              .last

    range&.price || 0
  end

  def element_params
    params.require(:element).permit(
      :name,
      price_ranges_attributes: [:id, :min_quantity, :max_quantity, :price, :_destroy]
    )
  end
end
