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

ActiveRecord::Schema.define(version: 20150425043156) do

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

  create_table "chapters", force: :cascade do |t|
    t.string   "chapter_title"
    t.text     "chapter_description"
    t.date     "chapter_start_date"
    t.date     "chapter_end_date"
    t.integer  "course_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "curriculum_id"
  end

  add_index "chapters", ["course_id"], name: "index_chapters_on_course_id", using: :btree
  add_index "chapters", ["curriculum_id"], name: "index_chapters_on_curriculum_id", using: :btree

  create_table "course_categories", force: :cascade do |t|
    t.string   "cc_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "course_name"
    t.string   "course_code"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "course_category_id"
    t.integer  "group_id"
  end

  add_index "courses", ["course_category_id"], name: "index_courses_on_course_category_id", using: :btree
  add_index "courses", ["group_id"], name: "index_courses_on_group_id", using: :btree

  create_table "curriculums", force: :cascade do |t|
    t.string   "cur_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "exam_categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "exam_date"
    t.integer  "exam_category_id"
    t.integer  "course_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "exams", ["course_id"], name: "index_exams_on_course_id", using: :btree
  add_index "exams", ["exam_category_id"], name: "index_exams_on_exam_category_id", using: :btree

  create_table "family_members", force: :cascade do |t|
    t.integer  "guardian_id"
    t.integer  "student_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "family_members", ["guardian_id"], name: "index_family_members_on_guardian_id", using: :btree
  add_index "family_members", ["student_id"], name: "index_family_members_on_student_id", using: :btree

  create_table "grades", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "exam_id"
    t.integer  "score",      default: 0
    t.string   "feedback"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "grades", ["exam_id"], name: "index_grades_on_exam_id", using: :btree
  add_index "grades", ["student_id"], name: "index_grades_on_student_id", using: :btree

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
    t.string   "name"
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "lesson_title"
    t.text     "lesson_description"
    t.date     "lesson_start_date"
    t.date     "lesson_end_date"
    t.string   "attachment"
    t.integer  "chapter_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "curriculum_id"
  end

  add_index "lessons", ["chapter_id"], name: "index_lessons_on_chapter_id", using: :btree
  add_index "lessons", ["curriculum_id"], name: "index_lessons_on_curriculum_id", using: :btree

  create_table "student_courses", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "student_courses", ["course_id"], name: "index_student_courses_on_course_id", using: :btree
  add_index "student_courses", ["student_id"], name: "index_student_courses_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.date     "date_of_birth"
    t.string   "place_of_birth"
    t.string   "phone"
    t.string   "email"
    t.date     "enrollment_date"
    t.string   "address_line"
    t.string   "city"
    t.string   "country"
    t.boolean  "is_active",       default: true
    t.binary   "photo_data"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "gender"
    t.integer  "group_id"
  end

  add_index "students", ["group_id"], name: "index_students_on_group_id", using: :btree

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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "chapters", "courses"
  add_foreign_key "chapters", "curriculums"
  add_foreign_key "courses", "course_categories"
  add_foreign_key "courses", "groups"
  add_foreign_key "exams", "courses"
  add_foreign_key "exams", "exam_categories"
  add_foreign_key "family_members", "guardians"
  add_foreign_key "family_members", "students"
  add_foreign_key "grades", "exams"
  add_foreign_key "grades", "students"
  add_foreign_key "lessons", "chapters"
  add_foreign_key "lessons", "curriculums"
  add_foreign_key "student_courses", "courses"
  add_foreign_key "student_courses", "students"
  add_foreign_key "students", "groups"
end
