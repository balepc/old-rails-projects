# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100421071619) do

  create_table "accessories", :force => true do |t|
    t.integer "item_id"
    t.integer "accessory_id"
    t.integer "count",        :default => 1
  end

  create_table "admins", :force => true do |t|
    t.string   "login",                               :null => false
    t.string   "email",                               :null => false
    t.string   "crypted_password",                    :null => false
    t.string   "salt",                                :null => false
    t.boolean  "active",           :default => true
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",            :default => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "www"
  end

  create_table "complectation", :force => true do |t|
    t.integer "item_id"
    t.integer "complectation_id"
    t.integer "count",            :default => 1
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "currencies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "document_types", :force => true do |t|
    t.string   "name"
    t.boolean  "hidden",     :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", :force => true do |t|
    t.integer  "document_type_id"
    t.date     "valid_till"
    t.integer  "item_id",               :null => false
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.integer  "item_id"
    t.string   "image_data_file_name"
    t.string   "image_data_content_type"
    t.integer  "image_data_file_size"
    t.datetime "image_data_updated_at"
  end

  create_table "items", :force => true do |t|
    t.integer  "category_id"
    t.string   "model"
    t.string   "code"
    t.string   "article"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "image_id"
    t.integer  "country_id"
    t.integer  "company_id"
    t.string   "shortdesc"
    t.boolean  "accessory",   :default => false
    t.boolean  "hidden",      :default => false
  end

  create_table "items_standards", :id => false, :force => true do |t|
    t.integer "item_id",     :null => false
    t.integer "standard_id", :null => false
  end

  create_table "model_translations", :force => true do |t|
    t.string  "translateable_type", :null => false
    t.integer "translateable_id",   :null => false
    t.string  "field"
    t.string  "locale"
    t.string  "value"
    t.text    "text"
  end

  create_table "pages", :force => true do |t|
    t.integer  "page_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "price_lists", :force => true do |t|
    t.string   "name"
    t.string   "pricelist_file_name"
    t.string   "pricelist_content_type"
    t.integer  "pricelist_file_size"
    t.datetime "pricelist_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "random_images", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "standards", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_group",   :default => false, :null => false
    t.integer  "group_id"
  end

  create_table "view_translations", :force => true do |t|
    t.string   "scope"
    t.string   "code",       :null => false
    t.string   "value_en"
    t.string   "value_ru"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "view_translations", ["code"], :name => "main_translations"

end
