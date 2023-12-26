class CreateFleamarketPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_posts do |t|
      t.belongs_to :user
      t.string :title
      t.string :content
      t.integer :view_count
      t.integer :price
      t.string :category
      t.string :trade_address
      t.string :thumbnail_url
      t.integer :trade_status

      t.timestamps
    end
  end
end
