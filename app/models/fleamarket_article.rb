class FleamarketArticle < ApplicationRecord
  belongs_to :user
  has_many :fleamarket_article_likes

  enum :trade_status, [:done, :in_progress, :wait]
  enum :category, [:life,
                   :etc_used,
                   :food,
                   :digital_machine,
                   :furniture,
                   :child,
                   :children_books,
                   :sports,
                   :books,
                   :ticket]

end
