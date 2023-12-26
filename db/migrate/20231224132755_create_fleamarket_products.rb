class CreateFleamarketProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_products do |t|
      t.belongs_to :user
      t.belongs_to :fleamarket_trade
      t.string :title
      t.string :content
      t.integer :view_count
      t.integer :price
      t.string :category
      t.string :thumbnail_url

      t.timestamps
    end
  end
end
