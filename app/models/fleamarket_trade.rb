class FleamarketTrade < ApplicationRecord
  belongs_to :user
  enum :trade_status, [:done, :in_progress, :wait]
end
