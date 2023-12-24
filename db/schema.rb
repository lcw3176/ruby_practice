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

ActiveRecord::Schema[7.1].define(version: 2023_12_24_134812) do
  create_table "fleamarket_product_images", force: :cascade do |t|
    t.integer "fleamarket_product_id"
    t.string "source_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fleamarket_product_id"], name: "index_fleamarket_product_images_on_fleamarket_product_id"
  end

  create_table "fleamarket_product_interesteds", force: :cascade do |t|
    t.integer "user_id"
    t.integer "fleamarket_product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fleamarket_product_id"], name: "index_fleamarket_product_interesteds_on_fleamarket_product_id"
    t.index ["user_id"], name: "index_fleamarket_product_interesteds_on_user_id"
  end

  create_table "fleamarket_products", force: :cascade do |t|
    t.integer "user_id"
    t.integer "fleamarket_trade_id"
    t.string "title"
    t.string "content"
    t.integer "view_count"
    t.integer "price"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fleamarket_trade_id"], name: "index_fleamarket_products_on_fleamarket_trade_id"
    t.index ["user_id"], name: "index_fleamarket_products_on_user_id"
  end

  create_table "fleamarket_trades", force: :cascade do |t|
    t.integer "seller_id"
    t.integer "buyer_id"
    t.integer "trade_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_fleamarket_trades_on_buyer_id"
    t.index ["seller_id"], name: "index_fleamarket_trades_on_seller_id"
  end

  create_table "user_histories", force: :cascade do |t|
    t.bigint "user_history_id"
    t.integer "user_id"
    t.datetime "login_date"
    t.boolean "login_status"
    t.string "try_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_histories_on_user_id"
  end

  create_table "user_privates", force: :cascade do |t|
    t.bigint "user_private_id"
    t.integer "user_id"
    t.string "phone_number", default: "", null: false
    t.string "address", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_privates_on_user_id"
  end

  create_table "user_statuses", force: :cascade do |t|
    t.bigint "user_status_id"
    t.integer "user_id"
    t.integer "status_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_statuses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname", default: "", null: false
    t.float "manner_degree", default: 36.5, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "fleamarket_trades", "user", column: "buyer_id"
  add_foreign_key "fleamarket_trades", "user", column: "seller_id"
end
