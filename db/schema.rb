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

ActiveRecord::Schema.define(version: 20180630190223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "menu_groups", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_menu_groups_on_menu_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.integer "menu_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_group_id"], name: "index_menu_items_on_menu_group_id"
  end

  create_table "menu_sides", force: :cascade do |t|
    t.bigint "sides_group_id"
    t.bigint "menu_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_item_id"], name: "index_menu_sides_on_menu_item_id"
    t.index ["sides_group_id"], name: "index_menu_sides_on_sides_group_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sides_groups", force: :cascade do |t|
    t.string "name"
    t.integer "menu_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "side_type"
    t.boolean "group_side"
    t.boolean "multi_select"
    t.integer "menu_group_id"
    t.index ["menu_item_id"], name: "index_sides_groups_on_menu_item_id"
  end

  create_table "sides_items", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.integer "sides_group_id"
    t.integer "menu_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_item_id"], name: "index_sides_items_on_menu_item_id"
    t.index ["sides_group_id"], name: "index_sides_items_on_sides_group_id"
  end

  add_foreign_key "menu_sides", "menu_items"
  add_foreign_key "menu_sides", "sides_groups"
end
