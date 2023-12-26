class FleamarketController < ApplicationController

  def index
    @response = FleamarketPost.last(10)
  end

  def post
    @response = FleamarketPost.find_by(:id => params[:id])

  end
end
