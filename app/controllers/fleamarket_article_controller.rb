class FleamarketArticleController < ApplicationController
  def index
    articles = FleamarketArticle.order(:id).last(10).reverse

    render json: response_format(contents: articles), status: :ok
  end

  def show
    article = FleamarketArticle.find(params[:id])

    article.read_count += 1
    article.save

    render json: response_format(contents: article), status: :ok
  end

  def create
    article = FleamarketArticle.new(fleamarket_article_params)
    article.save

    render json: response_format, status: :ok
  end

  # find vs find_by
  def update
    article = FleamarketArticle.find(params[:id])
    article.update(fleamarket_article_params)

    render json: response_format, status: :ok
  end

  def destroy
    FleamarketArticle.destroy(params[:id])

    render json: response_format, status: :ok
  end

  private

  def fleamarket_article_params
    params.permit(:id, :user_id, :title, :content, :price, :wanna_trade_address, :category)
  end

end
