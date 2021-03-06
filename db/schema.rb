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

ActiveRecord::Schema.define(version: 2021_11_06_141705) do

  create_table "entry_definitions", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "type"
    t.boolean "mutable"
    t.string "default"
    t.boolean "multiple"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "key_value_pair_definitions", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "key_id", null: false
    t.bigint "value_id", null: false
    t.integer "children"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["key_id"], name: "index_key_value_pair_definitions_on_key_id"
    t.index ["value_id"], name: "index_key_value_pair_definitions_on_value_id"
  end

  add_foreign_key "key_value_pair_definitions", "entry_definitions", column: "key_id"
  add_foreign_key "key_value_pair_definitions", "entry_definitions", column: "value_id"
end
