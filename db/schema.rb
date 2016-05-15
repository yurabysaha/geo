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

ActiveRecord::Schema.define(version: 20160402124046) do

  create_table "games", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.integer  "count_question", default: 1
    t.integer  "current_score",  default: 0
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "games", ["question_id"], name: "index_games_on_question_id"
  add_index "games", ["user_id"], name: "index_games_on_user_id"

  create_table "questions", force: :cascade do |t|
    t.string   "title"
    t.string   "A"
    t.string   "B"
    t.string   "C"
    t.string   "D"
    t.string   "good"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "mail"
    t.string   "password_digest"
    t.string   "role"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
