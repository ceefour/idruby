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

ActiveRecord::Schema.define(:version => 20080810112649) do

  create_table "books", :force => true do |t|
    t.integer "types_id",      :limit => 11, :null => false
    t.integer "publishers_id", :limit => 11, :null => false
    t.string  "title"
    t.string  "isbn"
    t.text    "description"
    t.integer "code",          :limit => 11
    t.integer "pages",         :limit => 11
    t.date    "buyDate"
    t.string  "author"
    t.text    "screenshot"
    t.date    "created_at"
    t.date    "updated_at"
  end

  add_index "books", ["types_id"], :name => "index_books_on_types_id"
  add_index "books", ["publishers_id"], :name => "index_books_on_publishers_id"

  create_table "borrows", :force => true do |t|
    t.integer  "rules_id",            :limit => 11, :null => false
    t.integer  "users_id",            :limit => 11, :null => false
    t.integer  "books_types_id",      :limit => 11, :null => false
    t.integer  "books_id",            :limit => 11, :null => false
    t.integer  "books_publishers_id", :limit => 11, :null => false
    t.date     "startDate"
    t.date     "endDate"
    t.integer  "qty",                 :limit => 11
    t.string   "last_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "borrows", ["rules_id"], :name => "borrows_FKIndex1"
  add_index "borrows", ["users_id"], :name => "borrows_FKIndex2"
  add_index "borrows", ["books_id", "books_types_id", "books_publishers_id"], :name => "borrows_FKIndex3"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publishers", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "contactPerson"
    t.string   "phoneNumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rules", :force => true do |t|
    t.string   "name"
    t.integer  "days",       :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.text     "address"
    t.string   "official_code",             :limit => 20
  end

  create_table "users_has_books", :force => true do |t|
    t.integer  "users_id",            :limit => 11, :null => false
    t.integer  "books_types_id",      :limit => 11, :null => false
    t.integer  "books_id",            :limit => 11, :null => false
    t.integer  "books_publishers_id", :limit => 11, :null => false
    t.text     "attacment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users_has_books", ["users_id"], :name => "users_has_books_FKIndex1"
  add_index "users_has_books", ["books_id", "books_types_id", "books_publishers_id"], :name => "users_has_books_FKIndex2"

end
