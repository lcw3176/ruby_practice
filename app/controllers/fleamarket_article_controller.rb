class FleamarketArticleController < ApplicationController

  def index
    user = User.find(@user_auth_id)
    articles = FleamarketArticle.joins(:fleamarket_address_matcher)
                                .where(:wanna_trade_address => user.address)
                                .order(:id)
                                .last(DEFAULT_READ_SIZE)
                                .reverse

    render json: response_format(contents: articles), status: :ok
  end

  def show
    article = FleamarketArticle.find(params[:id])

    article.read_count += 1
    article.save

    render json: response_format(contents: article), status: :ok
  end

  def create
    article = FleamarketArticle.new(user_id: @user_auth_id,
                                    title: params[:title],
                                    content: params[:content],
                                    price: params[:price],
                                    wanna_trade_address: params[:wanna_trade_address],
                                    category: params[:category])

    raise ActiveRecord::RecordNotSaved unless article.save

    render json: response_format, status: :ok
  end

  def update
    article = FleamarketArticle.find(params[:id])
    article.update(title: params[:title],
                   content: params[:content],
                   price: params[:price],
                   wanna_trade_address: params[:wanna_trade_address],
                   category: params[:category])

    render json: response_format, status: :ok
  end

  def destroy
    FleamarketArticle.destroy(params[:id])

    render json: response_format, status: :ok
  end

end
