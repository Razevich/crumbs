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

ActiveRecord::Schema.define(version: 20160127030246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "comentable_id"
    t.string   "comentable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "non_profits", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.text     "location"
    t.text     "website"
    t.text     "email"
    t.text     "phone"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "projects", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.text     "need"
    t.text     "reward"
    t.integer  "non_profit_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "solutions", force: :cascade do |t|
    t.integer  "solutionable_id"
    t.string   "solutionable_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer  "uid",         limit: 8
    t.string   "first_name"
    t.string   "url"
    t.string   "provider"
    t.string   "last_name"
    t.string   "email"
    t.string   "location"
    t.string   "affiliation"
    t.text     "description"
    t.string   "image_url"
    t.string   "token"
    t.string   "expires_at"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "students_non_profits", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "non_profit_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tags", force: :cascade do |t|
    t.text     "name"
    t.text     "type"
    t.text     "location"
    t.text     "field"
    t.integer  "tagable_id"
    t.string   "tagable_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
