class CreateFleamarketProductImages < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_product_images do |t|
      t.belongs_to :fleamarket_product
      t.string :source_url

      t.timestamps
    end
  end
end
