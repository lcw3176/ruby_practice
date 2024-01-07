Rails.application.routes.draw do
  root "fleamarket_article#index"

  get "/fleamarket/articles", to: "fleamarket_article#index"
  get "/fleamarket/articles/:id", to: "fleamarket_article#show"

  get "/fleamarket/articles/register", to: "fleamarket_article#new"
  post "/fleamarket/articles/register", to: "fleamarket_article#create"

end
