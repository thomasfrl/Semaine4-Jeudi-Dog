# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_31_211453) do

  create_table "chiens", force: :cascade do |t|
    t.string "name"
    t.integer "city_id"
    t.index ["city_id"], name: "index_chiens_on_city_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
  end

  create_table "dog_sitters", force: :cascade do |t|
    t.string "name"
    t.integer "city_id"
    t.index ["city_id"], name: "index_dog_sitters_on_city_id"
  end

  create_table "strolls", force: :cascade do |t|
    t.date "date"
    t.integer "dog_sitter_id"
    t.index ["dog_sitter_id"], name: "index_strolls_on_dog_sitter_id"
  end

  create_table "table_join_dog_strolls", force: :cascade do |t|
    t.integer "chien_id"
    t.integer "stroll_id"
    t.index ["chien_id"], name: "index_table_join_dog_strolls_on_chien_id"
    t.index ["stroll_id"], name: "index_table_join_dog_strolls_on_stroll_id"
  end

end
