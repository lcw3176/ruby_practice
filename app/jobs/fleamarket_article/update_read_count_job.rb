class FleamarketArticle::UpdateReadCountJob < ApplicationJob
  queue_as :within_1_hour

  def perform(article_id)
    FleamarketArticle.find(article_id).present?.increment(:read_count, 1).save
  end
end
