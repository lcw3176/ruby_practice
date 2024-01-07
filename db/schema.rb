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

ActiveRecord::Schema[7.1].define(version: 2024_01_05_015312) do
  create_table "fleamarket_article_images", force: :cascade do |t|
    t.integer "fleamarket_article_id", null: false
    t.string "source_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fleamarket_article_id"], name: "index_fleamarket_article_images_on_fleamarket_article_id"
  end

  create_table "fleamarket_article_likes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "fleamarket_article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fleamarket_article_id"], name: "index_fleamarket_article_likes_on_fleamarket_article_id"
    t.index ["user_id"], name: "index_fleamarket_article_likes_on_user_id"
  end

  create_table "fleamarket_articles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title"
    t.string "content"
    t.integer "price"
    t.integer "category"
    t.string "trade_address"
    t.string "thumbnail_url"
    t.integer "trade_status"
    t.integer "read_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_fleamarket_articles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.float "manner_degree"
    t.integer "status"
    t.string "phone_number"
    t.string "address"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "ix_primary_key"
  end

  add_foreign_key "fleamarket_article_images", "fleamarket_articles"
  add_foreign_key "fleamarket_article_likes", "fleamarket_articles"
  add_foreign_key "fleamarket_article_likes", "users"
  add_foreign_key "fleamarket_articles", "users"
end
