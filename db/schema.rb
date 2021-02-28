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

ActiveRecord::Schema.define(version: 2021_02_28_143938) do

  create_table "acquisition_analytics", force: :cascade do |t|
    t.integer "acquisition_report_id", null: false
    t.integer "pub_arrived_as_supply"
    t.integer "pub_arrived_as_gift"
    t.integer "pub_bought"
    t.integer "pub_saved_as_supply"
    t.integer "pub_saved_as_gift"
    t.integer "pub_saved_as_old"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "pub_type_id"
    t.index ["acquisition_report_id"], name: "index_acquisition_analytics_on_acquisition_report_id"
    t.index ["pub_type_id"], name: "index_acquisition_analytics_on_pub_type_id"
  end

  create_table "acquisition_reports", force: :cascade do |t|
    t.string "reporter_identity"
    t.string "job_title"
    t.integer "posted_books"
    t.integer "refactored_items"
    t.text "note"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employments", force: :cascade do |t|
    t.integer "personel_id", null: false
    t.integer "department_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_employments_on_department_id"
    t.index ["personel_id"], name: "index_employments_on_personel_id"
  end

  create_table "journal_doc_analytics", force: :cascade do |t|
    t.string "reporter"
    t.date "report_date"
    t.integer "new_entry"
    t.integer "updated_entry"
    t.integer "new_author"
    t.integer "new_subject"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "personel_id"
    t.integer "journal_doc_report_id"
    t.index ["journal_doc_report_id"], name: "index_journal_doc_analytics_on_journal_doc_report_id"
    t.index ["personel_id"], name: "index_journal_doc_analytics_on_personel_id"
  end

  create_table "journal_doc_reports", force: :cascade do |t|
    t.integer "journal_count"
    t.integer "document_count"
    t.integer "unique_subjects_given"
    t.integer "unique_author_given"
    t.integer "author_given"
    t.string "reporter"
    t.date "report_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "personels", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "passive"
  end

  create_table "pub_types", force: :cascade do |t|
    t.string "pub_type_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reference_analytics", force: :cascade do |t|
    t.string "reporter"
    t.date "report_date"
    t.integer "user_from_out"
    t.integer "user_from_inside"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "online_patron_outer"
    t.integer "online_patron_inner"
    t.integer "open_access_sessions"
    t.integer "depot_book_usage"
    t.integer "depot_journal_usage"
    t.integer "depot_newspaper_usage"
    t.integer "book_on_loan"
    t.integer "book_renew"
    t.integer "book_withdraw"
    t.integer "book_on_loan_mp"
    t.integer "book_on_loan_retired_mp"
    t.integer "book_on_loan_inner_patron"
    t.integer "book_use_mp"
    t.integer "book_use_retired_mp"
    t.integer "book_use_inner_patron"
    t.integer "microfilm_use_mp"
    t.integer "microfilm_use_retired_mp"
    t.integer "microfilm_use_inner_patron"
    t.integer "microfilm_use_outer_patron"
    t.float "microfilm_income"
    t.integer "photocopy_a4_unpaid"
    t.integer "photocopy_a3_unpaid"
    t.integer "photocopy_a4_paid"
    t.integer "photocopy_a3_paid"
    t.integer "digitalized_pages"
    t.float "photocopy_income"
    t.text "notes"
    t.string "reporter_job_title"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "roles"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "acquisition_analytics", "acquisition_reports"
  add_foreign_key "acquisition_analytics", "pub_types"
  add_foreign_key "employments", "departments"
  add_foreign_key "employments", "personels"
  add_foreign_key "journal_doc_analytics", "personels"
end
