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

ActiveRecord::Schema.define(version: 20181203171229) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "settings"
  end

  create_table "cohorts_users", id: false, force: :cascade do |t|
    t.bigint "cohort_id", null: false
    t.bigint "user_id", null: false
    t.index ["cohort_id", "user_id"], name: "index_cohorts_users_on_cohort_id_and_user_id"
    t.index ["user_id", "cohort_id"], name: "index_cohorts_users_on_user_id_and_cohort_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "start"
    t.datetime "end"
    t.boolean "all_day", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.bigint "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_groups_on_cohort_id"
    t.index ["user_id"], name: "index_groups_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "auther_id", null: false
    t.string "user_tags", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.boolean "archive", default: false
    t.jsonb "user_information", default: {}, null: false
  end

  add_foreign_key "groups", "cohorts"
  add_foreign_key "groups", "users"
end
