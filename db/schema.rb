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

ActiveRecord::Schema.define(:version => 20121130153345) do

  create_table "branches", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "phone"
    t.text     "address"
    t.integer  "customer_id"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "contact_phone_2"
    t.string   "contact_2_name"
    t.string   "contact_2_phone"
    t.string   "contact_2_phone_2"
    t.string   "contact_3_name"
    t.string   "contact_3_phone"
    t.string   "contact_3_phone_2"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "branches", ["customer_id"], :name => "index_branches_on_customer_id"

  create_table "customers", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "city"
    t.string   "phone"
    t.text     "address_1"
    t.text     "address_2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "delivery_bus_travels", :force => true do |t|
    t.integer  "travel_id"
    t.integer  "delivery_bus_id"
    t.float    "odometer"
    t.float    "fuel"
    t.date     "date"
    t.time     "time"
    t.string   "sign_file_name"
    t.string   "sign_content_type"
    t.integer  "sign_file_size"
    t.datetime "sign_updated_at"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "delivery_bus_travels", ["delivery_bus_id"], :name => "index_delivery_bus_travels_on_delivery_bus_id"
  add_index "delivery_bus_travels", ["travel_id"], :name => "index_delivery_bus_travels_on_travel_id"

  create_table "delivery_buses", :force => true do |t|
    t.string   "code"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "supervisor_name"
    t.integer  "delivery_bus_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "employees", ["delivery_bus_id"], :name => "index_employees_on_delivery_bus_id"

  create_table "orders", :force => true do |t|
    t.integer  "stop_id"
    t.string   "code"
    t.integer  "branch_id"
    t.integer  "supplier_id"
    t.date     "date"
    t.string   "status"
    t.text     "message"
    t.string   "order_type"
    t.integer  "box_quantity"
    t.date     "deliver_date"
    t.time     "deliver_time"
    t.string   "receiver_name"
    t.string   "customer_sign_file_name"
    t.string   "customer_sign_content_type"
    t.integer  "customer_sign_file_size"
    t.datetime "customer_sign_updated_at"
    t.integer  "reason_id"
    t.integer  "delivered_box_quantity"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "orders", ["branch_id"], :name => "index_orders_on_branch_id"
  add_index "orders", ["reason_id"], :name => "index_orders_on_reason_id"
  add_index "orders", ["stop_id"], :name => "index_orders_on_stop_id"
  add_index "orders", ["supplier_id"], :name => "index_orders_on_supplier_id"

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "customer_id"
    t.integer  "employee_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "profiles", ["customer_id"], :name => "index_profiles_on_customer_id"
  add_index "profiles", ["employee_id"], :name => "index_profiles_on_employee_id"
  add_index "profiles", ["user_id"], :name => "index_profiles_on_user_id"

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "reasons", :force => true do |t|
    t.string   "code"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "receivers", :force => true do |t|
    t.string   "code"
    t.integer  "branch_id"
    t.string   "name"
    t.integer  "relationship"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "receivers", ["branch_id"], :name => "index_receivers_on_branch_id"

  create_table "stops", :force => true do |t|
    t.integer  "travel_id"
    t.integer  "branch_id"
    t.integer  "sequence"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "stops", ["branch_id"], :name => "index_stops_on_branch_id"
  add_index "stops", ["travel_id"], :name => "index_stops_on_travel_id"

  create_table "suppliers", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "phone"
    t.text     "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "travels", :force => true do |t|
    t.string   "code"
    t.integer  "employee_id"
    t.date     "date"
    t.string   "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "travels", ["employee_id"], :name => "index_travels_on_employee_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
