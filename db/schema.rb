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

ActiveRecord::Schema.define(:version => 20101206052122) do

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "country_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "loan_sectors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loans", :force => true do |t|
    t.integer  "kiva_id"
    t.string   "title"
    t.string   "city"
    t.integer  "country_id"
    t.string   "gender"
    t.string   "kiva_status"
    t.integer  "loan_sector_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "kiva_image_id"
    t.integer  "kiva_image_template"
    t.integer  "loan_amount"
    t.string   "activity"
    t.datetime "posted_date"
    t.integer  "borrower_count"
    t.string   "name"
    t.string   "use"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "geo_level"
  end

end
