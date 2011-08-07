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

ActiveRecord::Schema.define(:version => 20110807211502) do

  create_table "categories", :force => true do |t|
    t.integer   "user_id"
    t.string    "title"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "feature_requests", :force => true do |t|
    t.integer   "project_id"
    t.integer   "feature_id"
    t.integer   "quantity"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "features", :force => true do |t|
    t.integer   "category_id"
    t.string    "name"
    t.string    "title"
    t.integer   "points"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "price_groups", :force => true do |t|
    t.integer   "user_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "price_tiers", :force => true do |t|
    t.integer   "price_group_id"
    t.integer   "min_quantity"
    t.float     "unit_price"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.integer   "user_id"
    t.string    "email"
    t.string    "title"
    t.date      "starts_on"
    t.date      "ends_on"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "design_completeness"
  end

  create_table "users", :force => true do |t|
    t.string    "email"
    t.string    "encrypted_password",   :limit => 128
    t.string    "salt",                 :limit => 128
    t.string    "confirmation_token",   :limit => 128
    t.string    "remember_token",       :limit => 128
    t.string    "api_token",            :limit => 128
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "points_per_iteration"
    t.float     "price_per_iteration"
    t.integer   "base_points"
    t.string    "company_name"
    t.string    "company_url"
    t.string    "twitter_handle"
    t.string    "facebook_handle"
    t.string    "skype_handle"
    t.string    "linkedin_handle"
  end

  add_index "users", ["api_token"], :name => "index_users_on_api_token"
  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
