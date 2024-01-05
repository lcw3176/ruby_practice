class CreateFleamarketArticleImages < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_article_images do |t|
      t.belongs_to :fleamarket_article, null: false, foreign_key: true
      t.string :source_url

      t.timestamps
    end
  end
end
