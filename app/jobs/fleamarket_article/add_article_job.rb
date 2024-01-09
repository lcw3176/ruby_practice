class FleamarketArticle::AddArticleJob < ApplicationJob
  queue_as :mysql_queue

  def perform(params)
    article = FleamarketArticle.new(user_id: params[:user_id],
                                    title: params[:title],
                                    content:  params[:content],
                                    price: params[:price],
                                    trade_address: params[:trade_address],
                                    category: params[:category],
                                    published_date: Time.now)

    raise ActiveRecord::RecordNotSaved.new unless article.save

  end
end
