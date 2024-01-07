class FleamarketArticle::AddArticleJob < ApplicationJob
  queue_as :mysql_queue

  def perform(*args)
    # Do something later
  end
end
