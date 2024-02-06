# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_03_010242) do
  create_table "bills", force: :cascade do |t|
    t.string "title", null: false
    t.integer "sponsor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sponsor_id"], name: "index_bills_on_sponsor_id"
  end

  create_table "legislators", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vote_results", force: :cascade do |t|
    t.integer "legislator_id"
    t.integer "vote_id"
    t.integer "vote_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["legislator_id"], name: "index_vote_results_on_legislator_id"
    t.index ["vote_id"], name: "index_vote_results_on_vote_id"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "bill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_id"], name: "index_votes_on_bill_id"
  end

end
