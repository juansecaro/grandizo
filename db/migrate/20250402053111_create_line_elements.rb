class CreateLineElements < ActiveRecord::Migration[8.0]
  def change
    create_table :line_elements do |t|
      t.references :budget, null: false, foreign_key: true
      t.references :element, null: false, foreign_key: true
      t.decimal :quantity

      t.timestamps
    end
  end
end
