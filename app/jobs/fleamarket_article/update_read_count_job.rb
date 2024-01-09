class FleamarketArticle::UpdateReadCountJob < ApplicationJob
  queue_as :mysql_queue

  # 얘랑 아티클 추가랑 같은 큐에서 도는게 맞나?
  # 우선순위도 좀 다른거 같고, 작업량도 다를거 같은데

  def perform(article_id)
    article = FleamarketArticle.find_by(article_id: article_id)

    raise ActiveRecord::RecordNotFound.new if article.nil?

    article.increment(:read_count, 1).save
  end
end
