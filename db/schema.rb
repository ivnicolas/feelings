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

ActiveRecord::Schema.define(version: 2021_05_11_220807) do

  create_table "feelings", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_feelings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "feeling_id"
    t.boolean "drink_water"
    t.integer "water_intake"
    t.datetime "time_of_last_meal"
    t.text "what_did_you_eat"
    t.boolean "moment_of_quiet"
    t.integer "length_of_quiet"
    t.boolean "fresh_air"
    t.integer "time_online"
    t.boolean "social_interaction"
    t.integer "interaction_duration"
    t.integer "interaction_count"
    t.boolean "body_movement"
    t.boolean "body_movement_type"
    t.boolean "conflict"
    t.boolean "resolved_conflict"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "interaction_type"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "age"
    t.integer "zipcode"
    t.text "mantra"
    t.text "goal"
    t.integer "u_id"
    t.string "provider"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
