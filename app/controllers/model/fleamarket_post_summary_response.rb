# frozen_string_literal: true

class FleamarketPostSummaryResponse
  attr_accessor :title,
                :view_count,
                :price,
                :trade_address,
                :thumbnail_url,
                :trade_status,
                :interested_count

  def initialize(post, interested_count)
    @title = post.title
    @view_count = post.view_count
    @price = post.price
    @trade_address = post.trade_address
    @thumbnail_url = post.thumbnail_url
    @trade_status = post.trade_status
    @interested_count = interested_count
  end

end
