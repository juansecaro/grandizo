class AddUnitPriceAndLineTotalToLineElements < ActiveRecord::Migration[8.0]
  def change
    add_column :line_elements, :unit_price, :decimal
    add_column :line_elements, :line_total, :decimal
  end
end
