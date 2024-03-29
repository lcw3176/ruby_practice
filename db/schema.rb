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

ActiveRecord::Schema[7.1].define(version: 2024_01_10_213852) do
  create_table "address_codes", charset: "utf8mb3", force: :cascade do |t|
    t.integer "code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fleamarket_article_images", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "fleamarket_article_id", null: false
    t.string "source_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fleamarket_article_id"], name: "index_fleamarket_article_images_on_fleamarket_article_id"
  end

  create_table "fleamarket_article_likes", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "fleamarket_article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fleamarket_article_id"], name: "index_fleamarket_article_likes_on_fleamarket_article_id"
    t.index ["user_id"], name: "index_fleamarket_article_likes_on_user_id"
  end

  create_table "fleamarket_articles", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "address_code_id"
    t.bigint "trade_region_id"
    t.string "title"
    t.string "content"
    t.string "thumbnail_url", default: "https://avatars.githubusercontent.com/u/59993347?v=4"
    t.integer "price"
    t.integer "category"
    t.integer "trade_status", default: 2
    t.integer "read_count", default: 0
    t.boolean "visible", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_code_id"], name: "index_fleamarket_articles_on_address_code_id"
    t.index ["trade_region_id"], name: "index_fleamarket_articles_on_trade_region_id"
    t.index ["user_id"], name: "index_fleamarket_articles_on_user_id"
  end

  create_table "trade_regions", charset: "utf8mb3", force: :cascade do |t|
    t.integer "code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb3", force: :cascade do |t|
    t.float "manner_degree", default: 36.5
    t.integer "status", default: 0
    t.string "phone_number"
    t.bigint "address_code_id"
    t.bigint "trade_region_id"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_code_id"], name: "index_users_on_address_code_id"
    t.index ["trade_region_id"], name: "index_users_on_trade_region_id"
  end

end
