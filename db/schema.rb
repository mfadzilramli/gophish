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

ActiveRecord::Schema.define(version: 20170310084504) do

  create_table "campaign_sources", force: :cascade do |t|
    t.integer  "campaign_id"
    t.integer  "recipient_group_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["campaign_id"], name: "index_campaign_sources_on_campaign_id"
    t.index ["recipient_group_id"], name: "index_campaign_sources_on_recipient_group_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "date_start_at"
    t.datetime "date_end_at"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "email_templates", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.text     "content"
    t.boolean  "shared",      default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "recipient_groups", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.binary   "data"
    t.string   "filename"
    t.string   "mime_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "recipients", force: :cascade do |t|
    t.string   "full_name"
    t.string   "designation"
    t.string   "department"
    t.string   "email_to"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "recipient_group_id"
    t.index ["recipient_group_id"], name: "index_recipients_on_recipient_group_id"
  end

  create_table "senders", force: :cascade do |t|
    t.string   "title"
    t.string   "name"
    t.string   "subject"
    t.string   "email_from"
    t.string   "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "email_template_id"
    t.index ["email_template_id"], name: "index_senders_on_email_template_id"
  end

end
