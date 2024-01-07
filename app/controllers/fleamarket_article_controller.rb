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
    FleamarketArticle::AddArticleJob.perform_later(user_id: 122,
                                                   title: "...",
                                                   content: "...",
                                                   price: 100,
                                                   trade_address: "hello",
                                                   category: FleamarketArticle.categories[:etc_used])

    redirect_to fleamarket_articles_url
  end

end
