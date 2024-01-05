class FleamarketArticleController < ApplicationController
  def index
    @fleamarket_articles = FleamarketArticle.order(:created_at).reverse.last(10)
  end

  def show
    @article = FleamarketArticle.find(params[:id])
    @article.read_count += 1
    !@article.save
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
