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

ActiveRecord::Schema.define(version: 20141215172246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apns", force: true do |t|
    t.string   "rogers_apn_id"
    t.string   "fido_apn_id"
    t.string   "msd_code"
    t.boolean  "static_ip"
    t.boolean  "control_center"
    t.string   "context_id"
    t.string   "control_center_account_name"
    t.string   "control_center_account_id"
    t.string   "primary_dns"
    t.string   "secondary_dns"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "apn_name"
    t.string   "project_name"
    t.string   "project_number"
    t.string   "redundancy_type"
    t.string   "m2m_communications"
    t.string   "radius_jasper_proxy_filter"
  end

  create_table "contacts", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "province_state"
    t.string   "country"
    t.string   "email"
    t.string   "phone_number1"
    t.string   "phone_number2"
    t.boolean  "technical_contact"
    t.boolean  "business_contact"
    t.integer  "apn_id"
    t.integer  "tunnel_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nodes", force: true do |t|
    t.string   "ssr_location"
    t.integer  "apn_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tunnel_rules", force: true do |t|
    t.string   "services"
    t.string   "action"
    t.text     "remarks"
    t.string   "rogers_source_ip"
    t.string   "customer_source_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tunnels", force: true do |t|
    t.string   "nat_server_ip"
    t.string   "customer_vpn_ip"
    t.string   "customer_server_ip"
    t.string   "rogers_vpn_ip"
    t.string   "rogers_mobile_ip"
    t.string   "rogers_gre_tunnel_ip"
    t.string   "customer_gre_tunnel_ip"
    t.integer  "node_id"
    t.string   "rogers_vpn_device_desc"
    t.string   "customer_vpn_device_desc"
    t.string   "rogers_vpn_device_version"
    t.string   "customer_vpn_device_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password",                null: false
    t.string   "salt",                            null: false
    t.string   "first_name",                      null: false
    t.string   "last_name",                       null: false
    t.string   "company_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "province_state"
    t.string   "country"
    t.string   "phone_number1",                   null: false
    t.string   "phone_number2"
    t.boolean  "administrator"
    t.string   "username"
    t.integer  "apn_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
  end

  add_index "users", ["activation_token"], name: "index_users_on_activation_token", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree

end
