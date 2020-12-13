# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_13_095622) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "operations", force: :cascade do |t|
    t.bigint "pet_id"
    t.bigint "shelter_id"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pet_id"], name: "index_operations_on_pet_id"
    t.index ["shelter_id"], name: "index_operations_on_shelter_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name", null: false
    t.string "kind"
    t.integer "age"
    t.string "sex"
    t.text "description"
    t.bigint "shelter_id"
    t.string "photo_url"
    t.index ["shelter_id"], name: "index_pets_on_shelter_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
  end

end
