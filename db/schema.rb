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

ActiveRecord::Schema.define(version: 2022_04_21_183117) do

  create_table "admins", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "email"
    t.boolean "adminStatus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.index ["email"], name: "index_admins_on_email", unique: true
  end

  create_table "evaluates", force: :cascade do |t|
    t.integer "rating"
    t.text "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "projectName"
    t.date "evalReleaseDate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_on_teams", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "student_id", null: false
    t.integer "team_id", null: false
    t.index ["student_id"], name: "index_student_on_teams_on_student_id"
    t.index ["team_id"], name: "index_student_on_teams_on_team_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "email"
    t.boolean "adminStatus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "admin_id", null: false
    t.string "password_digest"
    t.string "password"
    t.index ["admin_id"], name: "index_students_on_admin_id"
  end

  create_table "submissions", force: :cascade do |t|
    t.integer "teamGrade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "teamName"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "works_ons", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "student_id", null: false
    t.integer "project_id", null: false
    t.index ["project_id"], name: "index_works_ons_on_project_id"
    t.index ["student_id"], name: "index_works_ons_on_student_id"
  end

  add_foreign_key "student_on_teams", "students"
  add_foreign_key "student_on_teams", "teams"
  add_foreign_key "students", "admins"
  add_foreign_key "works_ons", "projects"
  add_foreign_key "works_ons", "students"
end
