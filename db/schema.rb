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

ActiveRecord::Schema.define(:version => 20131008221917) do

  create_table "_alter0_reports", :id => false, :force => true do |t|
    t.string   "pseudo_mrn"
    t.integer  "accession_number"
    t.date     "dob"
    t.string   "department"
    t.integer  "exam_code_id"
    t.datetime "exam_date"
    t.integer  "requesting_md_id"
    t.integer  "attending_id"
    t.text     "report"
    t.text     "impression"
    t.integer  "positivity"
    t.integer  "certainty"
    t.integer  "radiologist_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "attendings", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "class_schema", :id => false, :force => true do |t|
    t.text "schema"
  end

  create_table "exam_codes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "total"
    t.float    "score"
  end

  create_table "pyConTextNLP_severity", :id => false, :force => true do |t|
    t.integer "result"
    t.text    "phrase"
    t.text    "svalue"
    t.text    "units"
  end

  create_table "pycontextnlp_results", :force => true do |t|
    t.integer "report_number"
    t.integer "run_args"
    t.integer "schema"
    t.text    "target_category"
    t.integer "classification"
    t.text    "most_positive_target"
  end

  create_table "pycontextnlp_results1", :id => false, :force => true do |t|
    t.integer "report_number"
    t.integer "run_args"
    t.integer "schema"
    t.text    "target_category"
    t.integer "classification"
    t.text    "most_positive_target"
  end

  create_table "radiologists", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reports", :id => false, :force => true do |t|
    t.string   "pseudo_mrn"
    t.integer  "accession_number"
    t.date     "dob"
    t.string   "department"
    t.integer  "exam_code_id"
    t.datetime "exam_date"
    t.integer  "requesting_md_id"
    t.integer  "attending_id"
    t.text     "report"
    t.text     "impression"
    t.integer  "positivity"
    t.integer  "certainty"
    t.integer  "radiologist_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "reps", :id => false, :force => true do |t|
    t.text "accession_number"
    t.text "impression"
  end

  create_table "requesting_mds", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "run_args", :id => false, :force => true do |t|
    t.text "run_date"
    t.text "label"
    t.text "args"
  end

  create_table "score_cards", :force => true do |t|
    t.integer  "total"
    t.float    "score"
    t.integer  "exam_code_id"
    t.integer  "gradeable_id"
    t.string   "gradeable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
