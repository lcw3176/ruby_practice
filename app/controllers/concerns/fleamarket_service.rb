# frozen_string_literal: true
require './app/controllers/model/fleamarket_response'

class FleamarketService

  def get_products
    @products = FleamarketProduct.all
    arr = []

    @products.each do |product|
      arr.push(product.user)
    end

    @users = UserPrivate.where(:user_id => arr)
    @response = []
    for i in 0...@products.count
      @response.push(FleamarketResponse.new(@products.records[i], @users.records[i]))
    end

    return @response
  end
end