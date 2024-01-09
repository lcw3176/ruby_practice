class FleamarketArticle < ApplicationRecord
  belongs_to :user
  belongs_to :fleamarket_address_matcher

  has_many :fleamarket_article_likes

  enum :trade_status, [:done, :in_progress, :sell]
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
