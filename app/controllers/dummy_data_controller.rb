class DummyDataController < ApplicationController

  def address
    AddressCode.transaction do
      (1.. 2000).each do |t|
        address_code = AddressCode.new(:code => t)
        address_code.save

        trade_region = TradeRegion.new(:code => t)
        trade_region.save
      end
    end

    render json: response_format, status: :ok
  end

  def user_article
      (1.. 200000).each do |t|
        user = User.new(phone_number: t, nickname: t, address_code_id: t % 2000 + 1,
                        trade_region_id: t % 2000 + 1)
        user.save


        article = FleamarketArticle.new(user_id: t,
                                        address_code_id: t % 2000 + 1,
                                        trade_region_id: t % 2000 + 1,
                                        title: t,
                                        content: t,
                                        price: t,
                                        category: FleamarketArticle.categories[:etc_used])
        article.save

        like = FleamarketArticleLike.new(user_id: t, fleamarket_article_id: article.id)
        like.save

      end


    render json: response_format, status: :ok
  end


end
