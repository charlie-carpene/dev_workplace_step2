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

ActiveRecord::Schema.define(version: 2021_09_25_112300) do

  create_table "countries", force: :cascade do |t|
    t.integer "code"
    t.string "iso_2"
    t.string "iso_3"
    t.string "name_fr"
    t.string "name_en"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "embassies", force: :cascade do |t|
    t.string "type_of_embassy"
    t.string "country"
    t.float "latitude"
    t.float "longitude"
    t.string "coordinates"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "french_foreigners", force: :cascade do |t|
    t.string "country"
    t.integer "year"
    t.integer "nbr_french"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
