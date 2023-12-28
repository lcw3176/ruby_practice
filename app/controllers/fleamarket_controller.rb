class FleamarketController < ApplicationController

  def index
    @response = FleamarketPost.order(:updated_at).reverse.last(10)
  end

  def show_post
    @post = FleamarketPost.find_by(:id => params[:id])
    check = FleamarketPostCheck.find_by_fleamarket_post_id(params[:id])
    check.count += 1
    check.save!

    @check_count = check.count

  end
end
