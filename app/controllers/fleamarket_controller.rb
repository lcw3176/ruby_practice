class FleamarketController < ApplicationController

  def index
    serivce = FleamarketService.new
    @responses = serivce.get_products
    
  end
end
