class CreateFleamarketArticleLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_article_likes, id: :bigint, primary_key: [:id] do |t|
      t.bigint :id, null: false, auto_increment: true

      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :fleamarket_article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
