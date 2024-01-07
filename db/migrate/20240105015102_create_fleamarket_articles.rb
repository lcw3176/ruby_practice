class CreateFleamarketArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_articles do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title
      t.string :content
      t.integer :price
      t.integer :category
      t.string :trade_address
      t.string :thumbnail_url, default: "https://avatars.githubusercontent.com/u/59993347?v=4"
      t.integer :trade_status, default: FleamarketArticle.trade_statuses[:wait]
      t.integer :read_count, default: 0

      t.timestamps
    end
  end
end
