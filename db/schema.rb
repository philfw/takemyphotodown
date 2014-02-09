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

ActiveRecord::Schema.define(version: 20140209042440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "image_uploads", force: true do |t|
    t.integer  "user_id"
    t.integer  "takedown_id"
    t.string   "image"
    t.boolean  "mark_for_trash"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "description"
    t.boolean  "selfie"
    t.text     "sending_method_of_photograph"
    t.string   "offending_title"
    t.text     "offending_url"
    t.string   "offending_website_name"
  end

  add_index "image_uploads", ["mark_for_trash"], name: "index_image_uploads_on_mark_for_trash", using: :btree
  add_index "image_uploads", ["takedown_id"], name: "index_image_uploads_on_takedown_id", using: :btree
  add_index "image_uploads", ["user_id"], name: "index_image_uploads_on_user_id", using: :btree

  create_table "takedowns", force: true do |t|
    t.integer  "user_id"
    t.date     "notice_date"
    t.text     "offending_website_names"
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "last_name"
    t.text     "offending_urls"
    t.text     "destination_emails"
    t.text     "photograph_descriptions"
    t.string   "mailing_address1"
    t.string   "mailing_address2"
    t.string   "mailing_city"
    t.string   "mailing_state"
    t.string   "mailing_zip"
    t.string   "home_phone_number"
    t.string   "cell_phone_number"
    t.string   "email_address"
    t.boolean  "electronically_signed_datetime"
    t.boolean  "images_confirmed"
    t.boolean  "as_guest"
    t.boolean  "mark_for_trash"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_signed"
    t.text     "photograph_names"
    t.text     "sending_method_of_photograph"
    t.boolean  "affirmation_good_faith"
  end

  add_index "takedowns", ["is_signed"], name: "index_takedowns_on_is_signed", using: :btree
  add_index "takedowns", ["user_id"], name: "index_takedowns_on_user_id", using: :btree

end
