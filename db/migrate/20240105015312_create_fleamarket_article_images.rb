class CreateFleamarketArticleImages < ActiveRecord::Migration[7.1]
  def change
    create_table :fleamarket_article_images,  id: :bigint, primary_key: [:id] do |t|
      t.bigint :id, null: false, auto_increment: true # 게시글 아이디

      t.belongs_to :fleamarket_article, null: false, foreign_key: true
      t.string :source_url

      t.timestamps
    end
  end
end
