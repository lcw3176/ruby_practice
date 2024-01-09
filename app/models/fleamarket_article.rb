class FleamarketArticle < ApplicationRecord
  belongs_to :user

  has_many :fleamarket_article_images, dependent: :delete_all
  has_many :fleamarket_address_matcher, dependent: :delete_all
  has_many :fleamarket_article_likes, dependent: :delete_all

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
