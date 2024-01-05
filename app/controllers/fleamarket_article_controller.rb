class FleamarketArticleController < ApplicationController
  def index
    @fleamarket_articles = FleamarketArticle.order(:updated_at).reverse.last(10)
  end

  def show
    @article = FleamarketArticle.find(params[:id])
    @article.read_count += 1
    !@article.save

    @like_count = FleamarketArticleLike.where(:fleamarket_article_id => params[:id]).count
  end
end
