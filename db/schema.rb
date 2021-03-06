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

ActiveRecord::Schema.define(version: 20180515134130) do

  create_table "accounts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "status",     limit: 255
    t.float    "balance",    limit: 24
    t.integer  "client_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "ancestry",   limit: 255
  end

  add_index "accounts", ["ancestry"], name: "index_accounts_on_ancestry", using: :btree
  add_index "accounts", ["client_id"], name: "index_accounts_on_client_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "cpf_or_cnpj",  limit: 255
    t.date     "birthdate"
    t.string   "fantasy_name", limit: 255
    t.string   "client_type",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "token",            limit: 255
    t.float    "value",            limit: 24
    t.string   "transaction_type", limit: 255
    t.integer  "account_to_id",    limit: 4
    t.integer  "account_from_id",  limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "transactions", ["account_from_id"], name: "index_transactions_on_account_from_id", using: :btree
  add_index "transactions", ["account_to_id"], name: "index_transactions_on_account_to_id", using: :btree
  add_index "transactions", ["token"], name: "index_transactions_on_token", using: :btree
  add_index "transactions", ["transaction_type"], name: "index_transactions_on_transaction_type", using: :btree

end
