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

ActiveRecord::Schema.define(version: 2020_05_27_152121) do

  create_table "address_entities", force: :cascade do |t|
    t.integer "record_id"
    t.string "label", default: "Address"
    t.string "line1"
    t.string "line2"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.json "settings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_id"], name: "index_address_entities_on_record_id"
  end

  create_table "drop_down_entities", force: :cascade do |t|
    t.integer "record_id"
    t.string "label"
    t.json "choices"
    t.json "settings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_id"], name: "index_drop_down_entities_on_record_id"
  end

  create_table "file_upload_entities", force: :cascade do |t|
    t.integer "record_id"
    t.string "label", default: "Upload a file"
    t.string "s3_url"
    t.json "settings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_id"], name: "index_file_upload_entities_on_record_id"
  end

  create_table "forms", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_forms_on_user_id"
  end

  create_table "header_entities", force: :cascade do |t|
    t.integer "record_id"
    t.string "heading"
    t.string "sub_header"
    t.json "settings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_id"], name: "index_header_entities_on_record_id"
  end

  create_table "name_entities", force: :cascade do |t|
    t.integer "record_id"
    t.string "label", default: "Name"
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.json "settings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_id"], name: "index_name_entities_on_record_id"
  end

  create_table "records", force: :cascade do |t|
    t.integer "form_id"
    t.integer "position"
    t.string "entity_type"
    t.integer "entity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_records_on_form_id"
  end

  create_table "text_field_entities", force: :cascade do |t|
    t.integer "record_id"
    t.string "label"
    t.json "settings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_id"], name: "index_text_field_entities_on_record_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
