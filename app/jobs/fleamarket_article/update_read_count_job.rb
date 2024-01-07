class FleamarketArticle::UpdateReadCountJob < ApplicationJob
  queue_as :mysql_queue

  def perform(article_id)
    FleamarketArticle.find(article_id).increment(:read_count, 1).save
  end
end
