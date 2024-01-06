class FleamarketArticle < ApplicationRecord
  belongs_to :user
  has_many :fleamarket_article_likes

  enum :trade_status, [:done, :in_progress, :wait]

end
