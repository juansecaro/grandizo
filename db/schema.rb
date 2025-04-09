# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_04_07_163145) do
  create_table "budgets", force: :cascade do |t|
    t.string "client_name"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elements", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_elements", force: :cascade do |t|
    t.integer "budget_id", null: false
    t.integer "element_id", null: false
    t.decimal "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "unit_price"
    t.decimal "line_total"
    t.index ["budget_id"], name: "index_line_elements_on_budget_id"
    t.index ["element_id"], name: "index_line_elements_on_element_id"
  end

  create_table "price_ranges", force: :cascade do |t|
    t.integer "element_id", null: false
    t.integer "min_quantity"
    t.integer "max_quantity"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["element_id"], name: "index_price_ranges_on_element_id"
  end

  add_foreign_key "line_elements", "budgets"
  add_foreign_key "line_elements", "elements"
  add_foreign_key "price_ranges", "elements"
end
