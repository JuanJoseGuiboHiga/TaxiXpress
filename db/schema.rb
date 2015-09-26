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

ActiveRecord::Schema.define(version: 20150926032423) do

  create_table "clients", force: :cascade do |t|
    t.string   "no_client",              limit: 255
    t.string   "telephone",              limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "clients", ["email"], name: "index_clients_on_email", unique: true, using: :btree
  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true, using: :btree

  create_table "drivers", force: :cascade do |t|
    t.string   "name_driver",            limit: 255
    t.string   "address_driver",         limit: 255
    t.string   "telephone_driver",       limit: 255
    t.string   "status_driver",          limit: 255
    t.string   "placa_driver",           limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "drivers", ["email"], name: "index_drivers_on_email", unique: true, using: :btree
  add_index "drivers", ["reset_password_token"], name: "index_drivers_on_reset_password_token", unique: true, using: :btree

  create_table "services", force: :cascade do |t|
    t.string   "address_origin",         limit: 255
    t.string   "address_end",            limit: 255
    t.string   "price",                  limit: 255
    t.string   "paymentype",             limit: 255
    t.string   "calification",           limit: 255
    t.string   "observation",            limit: 255
    t.integer  "client_id",              limit: 4
    t.integer  "driver_id",              limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "services", ["client_id"], name: "index_services_on_client_id", using: :btree
  add_index "services", ["driver_id"], name: "index_services_on_driver_id", using: :btree
  add_index "services", ["email"], name: "index_services_on_email", unique: true, using: :btree
  add_index "services", ["reset_password_token"], name: "index_services_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "services", "clients"
  add_foreign_key "services", "drivers"
end
