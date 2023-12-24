class UserStatus < ApplicationRecord
  enum :status_type, [:normal, :bad, :sleep, :dealer]
end
