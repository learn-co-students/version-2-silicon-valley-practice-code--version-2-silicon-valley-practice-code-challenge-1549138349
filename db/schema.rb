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

ActiveRecord::Schema.define(version: 2019_02_08_214721) do

  create_table "funding_rounds", force: :cascade do |t|
    t.integer "startup_id"
    t.integer "venture_capitalist_id"
    t.string "type_s"
    t.integer "investments"
  end

  create_table "startups", force: :cascade do |t|
    t.string "name"
    t.string "founder"
    t.string "domain"
  end

  create_table "venture_capitalists", force: :cascade do |t|
    t.string "name"
    t.integer "worth"
  end

end
