class DummyDataController < ApplicationController

  def address_code
    AddressCode.transaction do
      (1.. 100).each do |t|
        address_code = AddressCode.new(:code => t)
        address_code.save
      end
    end


    render json: response_format, status: :ok
  end

  def user
    User.transaction do
      (1.. 10000).each do |t|
        user = User.new(phone_number: t,address:t, nickname: t)
        user.save
      end
    end


    render json: response_format, status: :ok
  end


  def article

    FleamarketArticle.transaction do
      (1.. 100).each do |t|
        (1.. 1000).each do |v|
          article = FleamarketArticle.new(user_id: t,
                                          wanna_trade_address: v,
                                          title: t,
                                          content: t,
                                          price: t,
                                          category: FleamarketArticle.categories[:etc_used])
          article.save
        end

      end
    end


    render json: response_format, status: :ok
  end


  def article_like

    FleamarketArticleLike.transaction do
      (1.. 10000).each do |t|
        like = FleamarketArticleLike.new(user_id: t, fleamarket_article_id: t)
        like.save
      end
    end

  end

  def article_address_matcher

    count = 0

    FleamarketAddressMatcher.transaction do
      (1.. 100).each do |t|
        (1.. 1000).each do |v|
          count += 1

          matcher = FleamarketAddressMatcher.new(fleamarket_article_id: count, address_code_id: t)
          matcher.save

        end
      end
    end

  end

end
