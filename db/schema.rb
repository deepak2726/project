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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130315164555) do

  create_table "examquestions", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exams", :force => true do |t|
    t.string   "name"
    t.string   "exam_code"
    t.text     "instruction"
    t.string   "exam_type"
    t.integer  "total_mark"
    t.string   "subject"
    t.integer  "organisation_id"
    t.datetime "exam_date"
    t.time     "total_time"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "questions", :force => true do |t|
    t.text     "description"
    t.integer  "question_type_id"
    t.integer  "sort_order"
    t.boolean  "is_published"
    t.boolean  "is_shared"
    t.integer  "user_id"
    t.integer  "subject_id"
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "category_subject_id"
    t.integer  "mark"
    t.integer  "feed_back"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

end
