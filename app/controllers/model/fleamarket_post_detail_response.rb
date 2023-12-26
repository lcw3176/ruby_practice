# frozen_string_literal: true

class FleamarketPostDetailResponse
  attr_accessor :title,
                :view_count,
                :user_id,
                :created_at,
                :manner_degree,
                :category,
                :price,
                :trade_address,
                :thumbnail_url,
                :trade_status,
                :interested_count

  def initialize(post, user, interested_count)
    @title = post.title
    @view_count = post.view_count
    @user_id = user.id
    @manner_degree = user.manner_degree

    @category = post.category
    @created_at = post.created_at
    @price = post.price

    @trade_address = post.trade_address
    @thumbnail_url = post.thumbnail_url
    @trade_status = post.trade_status
    @interested_count = interested_count
  end

end
