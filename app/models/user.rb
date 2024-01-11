class User < ApplicationRecord
  belongs_to :address_code
  belongs_to :trade_region

  enum :status, [:normal, :bad]
end
