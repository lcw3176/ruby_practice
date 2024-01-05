class CreateFleamarketArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_articles do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title
      t.string :content
      t.integer :price
      t.integer :category
      t.string :trade_address
      t.string :thumbnail_url
      t.integer :trade_status
      t.integer :read_count

      t.timestamps
    end
  end
end
