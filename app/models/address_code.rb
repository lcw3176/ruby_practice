class AddressCode < ApplicationRecord
  has_many :fleamarket_address_matcher, dependent: :delete_all
end
