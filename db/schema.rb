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

ActiveRecord::Schema.define(version: 20190327002929) do

  create_table "notes", force: :cascade do |t|
    t.string  "title"
    t.string  "content"
    t.integer "user_id"
    t.integer "park_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string "park_name"
    t.string "headline"
    t.string "state"
    t.string "website"
    t.string "image"
    t.string "description"
  end

  create_table "user_parks", force: :cascade do |t|
    t.integer "park_id"
    t.integer "user_id"
    t.boolean "been_to"
    t.boolean "bucket_list"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password_digest"
    t.string "email"
  end

end
