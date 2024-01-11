class FleamarketArticleController < ApplicationController

  def index
    user = User.find(@user_auth_id)
    articles = FleamarketArticle.where(:trade_region_id => user.trade_region)
                                .order(:created_at)
                                .last(DEFAULT_READ_SIZE)
                                .reverse

    render json: response_format(contents: articles), status: :ok
  end

  def show
    article = FleamarketArticle.find(params[:id])
    article.read_count += 1
    article.save

    image_sources = []
    article.fleamarket_article_images.each do |t|
      image_sources.push(t)
    end

    render json: response_format(contents: {article: article, images: image_sources}), status: :ok
  end

  def create
    article = FleamarketArticle.new(user_id: @user_auth_id,
                                    title: params[:title],
                                    content: params[:content],
                                    price: params[:price],
                                    address_code_id: params[:address_code],
                                    trade_region_id: params[:trade_region],
                                    category: params[:category])

    raise ActiveRecord::RecordNotSaved unless article.save

    params[:images].each do |v|
      article_image = FleamarketArticleImage.new(:fleamarket_article_id => article.id, :source_url => v)
      raise ActiveRecord::RecordNotSaved unless article_image.save
    end

    render json: response_format, status: :ok
  end

  def update
    article = FleamarketArticle.find(params[:id])
    article.update(title: params[:title],
                   content: params[:content],
                   price: params[:price],
                   address_code_id: params[:address_code],
                   trade_region_id: params[:trade_region],
                   category: params[:category])

    params[:images].each do |v|
      article_image = FleamarketArticleImage.new(:fleamarket_article_id => article.id, :source_url => v)
      raise ActiveRecord::RecordNotSaved unless article_image.save
    end

    render json: response_format, status: :ok
  end

  def destroy
    FleamarketArticle.destroy(params[:id])

    render json: response_format, status: :ok
  end


  private

  def article_params
    params.permit(:title, :content, :price, :address_code, :trade_region, :category)
  end

end
