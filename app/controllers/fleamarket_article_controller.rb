class FleamarketArticleController < ApplicationController
  def index
    articles = FleamarketArticle.order(:id).last(10).reverse

    render json: make_success_format(code: "success", contents: articles), status: 200
  end

  def show
    article = FleamarketArticle.find(params[:id])

    article.increment!(:read_count, 1)

    render json: make_success_format(code: "success", contents: article), status: 200
  end


  def create
    article = FleamarketArticle.new(fleamarket_article_params)
    article.save

    render json: make_success_format(code: "success"), status: 200
  end

  # find vs find_by
  def update
    article = FleamarketArticle.find(params[:id])
    article.update(fleamarket_article_params)

    render json: make_success_format(code: "success"), status: 200
  end

  def destroy
    FleamarketArticle.destroy(params[:id])

    render json: make_success_format(code: "success"), status: 200
  end

  private

  def fleamarket_article_params
    params.require(:article).permit(:id, :user_id, :title, :content, :price, :trade_address, :category)
  end

end
