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

ActiveRecord::Schema.define(:version => 20111013081103) do

  create_table "admins", :force => true do |t|
    t.string   "name",                   :limit => 128
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "featured_feeds", :force => true do |t|
    t.integer  "feed_id",                          :null => false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position",          :default => 0
  end

  create_table "feeds", :force => true do |t|
    t.string   "title",              :limit => 512,                    :null => false
    t.string   "url",                :limit => 512
    t.boolean  "leaf",                              :default => false
    t.integer  "parent_id"
    t.string   "feed_type",          :limit => 32,  :default => "RSS", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "position",                          :default => 0
  end

  create_table "share_tos", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "stream_id",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stream_feeds", :force => true do |t|
    t.integer  "stream_id",                                    :null => false
    t.string   "title",      :limit => 512,                    :null => false
    t.string   "url",        :limit => 512
    t.string   "feed_type",  :limit => 32,  :default => "RSS", :null => false
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "streams", :force => true do |t|
    t.string   "title",      :limit => 512
    t.integer  "user_id",                   :null => false
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",    :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token"
    t.boolean  "newsletter",                            :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
