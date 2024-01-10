class DummyDataController < ApplicationController

  def address_code
    AddressCode.transaction do
      (1.. 2000).each do |t|
        address_code = AddressCode.new(:code => t)
        address_code.save
      end
    end


    render json: response_format, status: :ok
  end

  def user
      (1.. 100000).each do |t|
        user = User.new(phone_number: t,address:t, nickname: t)
        user.save
      end


    render json: response_format, status: :ok
  end


  def article

      (1.. 100000).each do |t|
        article = FleamarketArticle.new(user_id: t,
                                        wanna_trade_address: t % 2000 + 1,
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


  def article_like

    (1.. 100000).each do |t|
        like = FleamarketArticleLike.new(user_id: t, fleamarket_article_id: t)
        like.save
      end

  end

  def article_address_matcher
    (1.. 100000).each do |t|
      (1.. 20).each do |v|

        matcher = FleamarketAddressMatcher.new(fleamarket_article_id: t, address_code_id: v)
        matcher.save

      end
    end
  end

end
