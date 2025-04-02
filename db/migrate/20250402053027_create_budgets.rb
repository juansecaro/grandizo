class CreateBudgets < ActiveRecord::Migration[8.0]
  def change
    create_table :budgets do |t|
      t.string :client_name
      t.text :notes

      t.timestamps
    end
  end
end
