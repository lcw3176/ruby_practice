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

ActiveRecord::Schema[7.1].define(version: 2023_12_26_073233) do
  create_table "fleamarket_post_images", force: :cascade do |t|
    t.integer "fleamarket_post_id", null: false
    t.string "source_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fleamarket_post_id"], name: "index_fleamarket_post_images_on_fleamarket_post_id"
  end

  create_table "fleamarket_post_interesteds", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "fleamarket_post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fleamarket_post_id"], name: "index_fleamarket_post_interesteds_on_fleamarket_post_id"
    t.index ["user_id"], name: "index_fleamarket_post_interesteds_on_user_id"
  end

  create_table "fleamarket_posts", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.string "content"
    t.integer "view_count"
    t.integer "price"
    t.string "category"
    t.string "trade_address"
    t.string "thumbnail_url"
    t.integer "trade_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_fleamarket_posts_on_user_id"
  end

  create_table "fleamarket_trade_logs", force: :cascade do |t|
    t.integer "seller_id"
    t.integer "buyer_id"
    t.integer "fleamarket_post_id", null: false
    t.integer "trade_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_fleamarket_trade_logs_on_buyer_id"
    t.index ["fleamarket_post_id"], name: "index_fleamarket_trade_logs_on_fleamarket_post_id"
    t.index ["seller_id"], name: "index_fleamarket_trade_logs_on_seller_id"
  end

  create_table "user_histories", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "login_date"
    t.boolean "login_status"
    t.string "try_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_histories_on_user_id"
  end

  create_table "user_privates", force: :cascade do |t|
    t.integer "user_id"
    t.string "phone_number", default: "", null: false
    t.string "address", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_privates_on_user_id"
  end

  create_table "user_statuses", force: :cascade do |t|
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

  add_foreign_key "fleamarket_post_images", "fleamarket_posts"
  add_foreign_key "fleamarket_post_interesteds", "fleamarket_posts"
  add_foreign_key "fleamarket_post_interesteds", "users"
  add_foreign_key "fleamarket_trade_logs", "fleamarket_posts"
  add_foreign_key "fleamarket_trade_logs", "user", column: "buyer_id"
  add_foreign_key "fleamarket_trade_logs", "user", column: "seller_id"
end
