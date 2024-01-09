class FleamarketArticleLikesController < ApplicationController

  def create
    exist_like_check = FleamarketArticleLike.find_by(user_id: params[:user_id],
                                  fleamarket_article_id: params[:article_id])

    if exist_like_check.present?
      return render json: response_format(code: "already_exist", message: "좋아요 한 이력이 존재해요"), status: :ok
    end

    likes = FleamarketArticleLike.new(user_id: params[:user_id],
                                      fleamarket_article_id: params[:article_id])
    likes.save

    render json: response_format, status: :ok
  end
end
