# frozen_string_literal: true
require './app/controllers/model/fleamarket_post_summary_response'
require './app/controllers/model/fleamarket_post_detail_response'

class FleamarketService

  def get_post_summary
    @posts = FleamarketPost.all
    @response_arr = []

    @posts.each do |post|
      interested_count = FleamarketPostInterested.where(:fleamarket_post_id => post.id).all.count
      @response_arr.push FleamarketPostSummaryResponse.new(post, interested_count)
    end

    return @response_arr
  end

  def get_post_detail(id)
    post = FleamarketPost.find_by(:id => id)
    user = post.user
    interested_count = FleamarketPostInterested.where(:fleamarket_post_id => post.id).all.count
    @response = FleamarketPostDetailResponse.new(post, user, interested_count)

    return @response
  end
end