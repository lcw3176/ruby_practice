class FleamarketController < ApplicationController

  def index
    serivce = FleamarketService.new
    @response = serivce.get_post_summary

  end

  def post
    serivce = FleamarketService.new
    @response = serivce.get_post_detail(params[:id])

  end
end
