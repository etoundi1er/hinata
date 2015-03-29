# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150329223621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.integer  "group_id"
    t.integer  "status"
    t.date     "taken_at"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "course_name"
    t.string   "course_code"
    t.integer  "group_id"
    t.integer  "course_category"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "employee_category"
    t.string   "employee_level"
    t.string   "experience_years"
    t.string   "employee_qualification"
    t.string   "email"
    t.string   "phone"
    t.string   "address_line"
    t.string   "city"
    t.date     "start_date"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "family_members", force: :cascade do |t|
    t.integer  "guardian_id"
    t.integer  "student_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "family_members", ["guardian_id"], name: "index_family_members_on_guardian_id", using: :btree
  add_index "family_members", ["student_id"], name: "index_family_members_on_student_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "group_name"
    t.string   "group_code"
    t.string   "room"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guardians", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "relation"
    t.string   "phone"
    t.string   "email"
    t.string   "occupation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.date     "date_of_birth"
    t.string   "place_of_birth"
    t.string   "gender"
    t.string   "phone"
    t.string   "email"
    t.string   "group"
    t.date     "enrollment_date"
    t.string   "address_line"
    t.string   "city"
    t.string   "country"
    t.boolean  "is_active",       default: true
    t.boolean  "is_deleted",      default: false
    t.binary   "photo_data"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "address_line"
    t.string   "city"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_foreign_key "family_members", "guardians"
  add_foreign_key "family_members", "students"
end
