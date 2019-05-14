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

ActiveRecord::Schema.define(version: 2019_05_14_033419) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "certificates", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.string "status", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "certifications", force: :cascade do |t|
    t.integer "learning_record_id"
    t.string "cert_no", null: false
    t.string "cert_name", null: false
    t.string "cert_type"
    t.integer "certificate_id"
    t.integer "course_instance_id"
    t.string "cert_file_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["certificate_id"], name: "index_certifications_on_certificate_id"
    t.index ["course_instance_id"], name: "index_certifications_on_course_instance_id"
    t.index ["learning_record_id"], name: "index_certifications_on_learning_record_id"
  end

  create_table "course_instances", force: :cascade do |t|
    t.string "code", default: "", null: false
    t.string "name", default: "", null: false
    t.integer "partner_id"
    t.string "status"
    t.integer "certificate_id"
    t.decimal "total_xp", default: "100.0"
    t.integer "question_no", default: 0
    t.decimal "question_percentage", default: "0.0"
    t.integer "quiz_no", default: 0
    t.decimal "quiz_percentage", default: "0.0"
    t.decimal "assignment_1_percentage", default: "0.0"
    t.decimal "assignment_2_percentage", default: "0.0"
    t.decimal "assignment_3_percentage", default: "0.0"
    t.decimal "assignment_4_percentage", default: "0.0"
    t.decimal "assignment_5_percentage", default: "0.0"
    t.decimal "assignment_6_percentage", default: "0.0"
    t.decimal "final_exam_percentage", default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["certificate_id"], name: "index_course_instances_on_certificate_id"
    t.index ["partner_id"], name: "index_course_instances_on_partner_id"
  end

  create_table "learners", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "funid"
    t.string "full_name"
    t.string "gender"
    t.string "id_no1"
    t.string "id_no2"
    t.string "primary_phone"
    t.string "secondary_phone"
    t.string "secondary_email"
    t.string "facebook1"
    t.string "facebook2"
    t.index ["email"], name: "index_learners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_learners_on_reset_password_token", unique: true
  end

  create_table "learning_records", force: :cascade do |t|
    t.integer "learner_id"
    t.string "learner_type"
    t.string "class_code"
    t.integer "certificate_id"
    t.integer "course_instance_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "status"
    t.text "note"
    t.integer "partner_id"
    t.string "hannah"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["certificate_id"], name: "index_learning_records_on_certificate_id"
    t.index ["course_instance_id"], name: "index_learning_records_on_course_instance_id"
    t.index ["learner_id"], name: "index_learning_records_on_learner_id"
    t.index ["partner_id"], name: "index_learning_records_on_partner_id"
  end

  create_table "partners", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.string "email1"
    t.string "email2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "third_party_accounts", force: :cascade do |t|
    t.string "source", default: "", null: false
    t.string "course", default: "", null: false
    t.decimal "price", default: "0.0"
    t.string "account_username", null: false
    t.string "account_email", null: false
    t.string "status"
    t.integer "learning_record_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["learning_record_id"], name: "index_third_party_accounts_on_learning_record_id"
  end

  create_table "transcripts", force: :cascade do |t|
    t.integer "course_instance_id"
    t.integer "learning_record_id"
    t.integer "question_no", default: 0
    t.integer "quiz_no", default: 0
    t.decimal "assignment_1_point", default: "0.0"
    t.decimal "assignment_2_point", default: "0.0"
    t.decimal "assignment_3_point", default: "0.0"
    t.decimal "assignment_4_point", default: "0.0"
    t.decimal "assignment_5_point", default: "0.0"
    t.decimal "assignment_6_point", default: "0.0"
    t.decimal "final_exam_point", default: "0.0"
    t.decimal "total_point"
    t.string "status"
    t.date "completed_date"
    t.string "grade"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_instance_id"], name: "index_transcripts_on_course_instance_id"
    t.index ["learning_record_id"], name: "index_transcripts_on_learning_record_id"
  end

end
