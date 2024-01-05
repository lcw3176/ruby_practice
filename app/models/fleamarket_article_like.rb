class FleamarketArticleLike < ApplicationRecord
  belongs_to :user
  belongs_to :fleamarket_article
end
