class User < ApplicationRecord
  enum :status, [:normal, :bad]
end
