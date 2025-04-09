class CreatePriceRanges < ActiveRecord::Migration[8.0]
  def change
    create_table :price_ranges do |t|
      t.references :element, null: false, foreign_key: true
      t.integer :min_quantity
      t.integer :max_quantity
      t.decimal :price

      t.timestamps
    end
  end
end
