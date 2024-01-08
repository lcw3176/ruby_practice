class FleamarketArticleController < ApplicationController
  def index
    articles = FleamarketArticle.order(:id).last(10).reverse

    render json: articles, status: 200
  end

  def show
    article = FleamarketArticle.find_by(id: params[:id])
    raise ActiveRecord::RecordNotFound.new if @article.nil? || @article.id.blank?
    FleamarketArticle::UpdateReadCountJob.perform_later(@article.id)

    render json: article, status: 200
  end

  # ui 관련이므로 일단 뺌
  # def new
    # @article = FleamarketArticle.new
  # end

  def create
    FleamarketArticle::AddArticleJob.perform_later(fleamarket_article_params)

    render status: 200
  end

  def patch

  end

  def delete

  end


  private

  def fleamarket_article_params
    params.require(:article).permit(:user_id, :title, :content, :price, :trade_address, :category)
  end
end
