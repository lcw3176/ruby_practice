class FleamarketProduct < ApplicationRecord
  belongs_to :user
  belongs_to :fleamarket_trade
end
