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

ActiveRecord::Schema.define(version: 20170801130352) do

  create_table "analyses", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "conclusion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clinics", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "phone"
    t.string   "email",      null: false
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diseases", force: :cascade do |t|
    t.string "title",       null: false
    t.string "description"
    t.string "icd_code"
  end

  create_table "doctor_grades", force: :cascade do |t|
    t.integer "doctor_id"
    t.integer "grade_id"
  end

  create_table "doctor_specializations", force: :cascade do |t|
    t.integer "doctor_id"
    t.integer "specialization_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "surname",    null: false
    t.string   "patronymic"
    t.string   "phone"
    t.string   "email",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string "title"
  end

  create_table "illness_symptoms", force: :cascade do |t|
    t.integer  "illness_id"
    t.integer  "symptom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "illnesses", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "doctor_id"
    t.string  "description"
    t.string  "title"
    t.string  "icd_code"
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "patronymic"
    t.string   "phone"
    t.string   "email",                               null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "patients", ["email"], name: "index_patients_on_email", unique: true
  add_index "patients", ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true

  create_table "practices", force: :cascade do |t|
    t.integer "clinic_id"
    t.integer "doctor_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.string   "recommendations"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "specializations", force: :cascade do |t|
    t.string "title"
    t.string "code"
  end

  create_table "symptoms", force: :cascade do |t|
    t.string "title",       null: false
    t.string "description"
  end

  create_table "visits", force: :cascade do |t|
    t.datetime "date_time",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
