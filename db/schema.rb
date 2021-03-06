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

ActiveRecord::Schema.define(version: 20140926203230) do

  create_table "admins", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "encrypted_password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "salt"
  end

  create_table "employers", force: true do |t|
    t.string   "company"
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "tag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_applications", force: true do |t|
    t.string "job"
    t.string "job_seeker"
    t.string "cover_letter"
    t.date "application_date"
    t.string "status"
  end

  create_table "job_seekers", force: true do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.integer "phone_number"
    t.string "skills"
    t.string "resume"
  end

end
