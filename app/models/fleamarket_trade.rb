class FleamarketTrade < ApplicationRecord
  enum :trade_status, [:done, :in_progress, :wait]
end
