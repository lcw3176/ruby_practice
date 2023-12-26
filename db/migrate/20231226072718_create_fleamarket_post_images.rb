class CreateFleamarketPostImages < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_post_images do |t|
      t.references :fleamarket_post, null: false, foreign_key: true
      t.string :source_url

      t.timestamps
    end
  end
end
