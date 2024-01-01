class FleamarketPost < ApplicationRecord
  belongs_to :user
  has_many :fleamarket_post_interested
  has_many :fleamarket_post_image
end
