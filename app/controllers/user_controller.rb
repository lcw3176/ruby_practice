class UserController < ApplicationController
  def index
    articles = FleamarketArticle.joins(:fleamarket_article_likes).where(fleamarket_article_likes: {user_id: params[:user_id]})

    render json: response_format(contents: articles), status: :ok
  end

  def create
    likes = FleamarketArticleLike.new(user_id: params[:user_id],
                              fleamarket_article_id: params[:article][:article_id])
    likes.save

    render json: response_format(contents: likes), status: :ok
  end


  def destroy
    FleamarketArticleLike.destroy_by(fleamarket_article_id: params[:article_id],
                                user_id: params[:user_id])

    render json: response_format, status: :ok
  end


  private

  def user_like_params
    params.require(:article).permit(:article_id)
  end


end
