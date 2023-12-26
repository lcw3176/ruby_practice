# frozen_string_literal: true

class FleamarketResponse
  attr_accessor :user_private, :product

  def initialize(products, user)
    @product = products
    @user_private = user
  end

end
