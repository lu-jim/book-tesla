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

ActiveRecord::Schema[7.0].define(version: 2022_04_08_200637) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", id: false, force: :cascade do |t|
    t.bigint "car_id", null: false
    t.bigint "user_id", null: false
    t.datetime "date"
    t.index ["car_id", "user_id"], name: "index_bookings_on_car_id_and_user_id"
    t.index ["user_id", "car_id"], name: "index_bookings_on_user_id_and_car_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "model"
    t.string "city"
    t.text "image_link"
    t.boolean "deleted", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
