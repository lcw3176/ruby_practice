class UserStatus < ApplicationRecord
  belongs_to :user
  enum :status_type, [:normal, :bad, :sleep, :dealer]
end
