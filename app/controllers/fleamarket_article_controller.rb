class FleamarketArticleController < ApplicationController
  def index
    @fleamarket_articles = FleamarketArticle.order(:created_at).reverse.last(10)
  end

  def show
    @article = FleamarketArticle.find_by(id: params[:id])

    raise ActiveRecord::RecordNotFound.new if @article.nil?

    FleamarketArticle::UpdateReadCountJob.perform_later(@article.id)
  end

  # def new
  #   @article = Article.new
  # end
  #
  # def create
  #   @article = Article.new(title: "...", body: "...")
  #
  #   if @article.save
  #     redirect_to @article
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

end
