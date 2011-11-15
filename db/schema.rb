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

ActiveRecord::Schema.define(:version => 20111114223323) do

  create_table "adventures", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "location"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caves", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "cost"
    t.string   "food"
    t.string   "hours"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "challenges", :force => true do |t|
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cons", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "date"
    t.string   "location"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hackathons", :force => true do |t|
    t.string   "name"
    t.string   "date"
    t.string   "hours"
    t.string   "website"
    t.string   "location"
    t.string   "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hackerspaces", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "address"
    t.string   "cost"
    t.string   "phone"
    t.string   "hours"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "homes", :force => true do |t|
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "learns", :force => true do |t|
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "makeateams", :force => true do |t|
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meetups", :force => true do |t|
    t.string   "name"
    t.string   "date"
    t.string   "hours"
    t.string   "website"
    t.string   "location"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nonprofits", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "location"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ourprojects", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "contributors"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teaches", :force => true do |t|
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
