class FleamarketArticleLikesController < ApplicationController

  def index
    articles = FleamarketArticle.joins(:fleamarket_article_likes)
                                .where(fleamarket_article_likes: {user_id: @user_auth_id})
                                .order(:id)
                                .last(DEFAULT_READ_SIZE)
                                .reverse

    render json: response_format(contents: articles), status: :ok
  end
  def create
    exist_like_check = FleamarketArticleLike.find_by(user_id: @user_auth_id,
                                  fleamarket_article_id: params[:article_id])

    if exist_like_check.present?
      return render json: response_format(code: "already_exist", message: "좋아요 한 이력이 존재해요"), status: :conflict
    end

    likes = FleamarketArticleLike.new(user_id: @user_auth_id, fleamarket_article_id: params[:article_id])

    raise ActiveRecord::NotSaved unless likes.save

    render json: response_format, status: :ok
  end


  def destroy
    article_id = params[:article_id]
    exist_like_check = FleamarketArticleLike.find_by(user_id: @user_auth_id, fleamarket_article_id: article_id)

    if exist_like_check.nil?
      return render json: response_format(code: "no_exist", message: "좋아요 한 이력이 없어요"), status: :not_found
    end

    FleamarketArticleLike.destroy_by(user_id: @user_auth_id, fleamarket_article_id: article_id)

    render json: response_format, status: :ok
  end
end
