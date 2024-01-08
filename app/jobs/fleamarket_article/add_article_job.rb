class FleamarketArticle::AddArticleJob < ApplicationJob
  queue_as :mysql_queue

  def perform(params)
    article = FleamarketArticle.new(user_id: params[:user_id],
                                    title: params[:title],
                                    content:  params[:content],
                                    price: params[:price],
                                    trade_address: params[:trade_address],
                                    category: params[:category])
    # :user_id, :title, :content, :price, :trade_address, :category
    raise ActiveRecord::RecordNotSaved.new unless article.save

  end
end
