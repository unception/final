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

ActiveRecord::Schema.define(version: 20170508132547) do

  create_table "articles", force: true do |t|
    t.string   "name"
    t.string   "author"
    t.string   "other_authors"
    t.string   "reviewer"
    t.string   "review"
    t.text     "contents"
    t.string   "category"
    t.string   "accepted"
    t.string   "copyright"
    t.string   "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors", force: true do |t|
    t.string   "name"
    t.string   "email_address"
    t.string   "article"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "published_articles", force: true do |t|
    t.string   "name"
    t.string   "author"
    t.string   "abstract"
    t.text     "contents"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviewers", force: true do |t|
    t.string   "name"
    t.string   "review_id"
    t.string   "email_address"
    t.string   "article"
    t.string   "num_review"
    t.string   "history"
    t.string   "specialty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.string   "article"
    t.string   "reviewer"
    t.string   "date_sent"
    t.string   "returned"
    t.text     "contents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
