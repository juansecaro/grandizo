class RemovePriceFromElements < ActiveRecord::Migration[8.0]
  def change
    remove_column :elements, :price, :decimal
  end
end
