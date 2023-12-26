class FleamarketTradeLog < ApplicationRecord
  belongs_to :user
  belongs_to :fleamarket_post
  enum :trade_status, [:done, :in_progress, :wait]
end
