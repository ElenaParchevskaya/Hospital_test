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

ActiveRecord::Schema[7.0].define(version: 2022_04_28_110859) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "patient_id"
    t.bigint "doctor_id"
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "doctor_id"
    t.index ["doctor_id"], name: "index_categories_on_doctor_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "patient_id"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_doctors_on_category_id"
    t.index ["patient_id"], name: "index_doctors_on_patient_id"
    t.index ["user_id"], name: "index_doctors_on_user_id"
  end

  create_table "patients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "diagnose"
    t.bigint "doctor_id"
    t.bigint "recommendation_id"
    t.index ["doctor_id"], name: "index_patients_on_doctor_id"
    t.index ["recommendation_id"], name: "index_patients_on_recommendation_id"
    t.index ["user_id"], name: "index_patients_on_user_id"
  end

  create_table "recommendations", force: :cascade do |t|
    t.string "recommendation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "doctor_id"
    t.bigint "patient_id"
    t.index ["doctor_id"], name: "index_recommendations_on_doctor_id"
    t.index ["patient_id"], name: "index_recommendations_on_patient_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
    t.bigint "patient_id"
    t.bigint "doctor_id"
    t.string "first_name"
    t.string "last_name"
    t.index ["doctor_id"], name: "index_users_on_doctor_id"
    t.index ["patient_id"], name: "index_users_on_patient_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "patients"
  add_foreign_key "categories", "doctors"
  add_foreign_key "doctors", "categories"
  add_foreign_key "doctors", "patients"
  add_foreign_key "doctors", "users"
  add_foreign_key "patients", "doctors"
  add_foreign_key "patients", "recommendations"
  add_foreign_key "patients", "users"
  add_foreign_key "recommendations", "doctors"
  add_foreign_key "recommendations", "patients"
  add_foreign_key "users", "doctors"
  add_foreign_key "users", "patients"
end