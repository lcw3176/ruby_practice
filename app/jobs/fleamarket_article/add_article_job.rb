class FleamarketArticle::AddArticleJob < ApplicationJob
  queue_as :mysql_queue

  def perform(user_id: , title: , content:, price:, trade_address:, category:)
    article = FleamarketArticle.new(user_id: user_id,
                                    title: title,
                                    content:  content,
                                    price: price,
                                    trade_address: trade_address,
                                    category: category)

    raise ActiveRecord::RecordNotSaved.new unless article.save

  end
end
