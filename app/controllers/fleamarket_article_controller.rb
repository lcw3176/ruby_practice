class FleamarketArticleController < ApplicationController
  def index
    @fleamarket_articles = FleamarketArticle.order(:id).last(10).reverse
  end

  def show
    @article = FleamarketArticle.find_by(id: params[:id])

    raise ActiveRecord::RecordNotFound.new if @article.nil? || @article.id.blank?

    FleamarketArticle::UpdateReadCountJob.perform_later(@article.id)
  end

  def new
    @article = Article.new
  end

  def create
    @article = FleamarketArticle.new(user_id: 1,
                                     title: "...",
                                     content:  "...",
                                     price: 100,
                                     trade_address: "hello동",
                                     category: FleamarketArticle.categories[:etc_used])

    raise ActiveRecord::RecordNotSaved.new unless @article.save

    redirect_to fleamarket_articles_url
  end

end
