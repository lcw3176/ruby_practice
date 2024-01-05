class User < ApplicationRecord
  enum :status, [:normal, :bad, :sleep]
end
