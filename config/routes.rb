Rails.application.routes.draw do
  root "fleamarket_article#index"

  get "/fleamarket/articles", to: "fleamarket_article#index"
  get "/fleamarket/articles/:id", to: "fleamarket_article#show"
  post "/fleamarket/articles", to: "fleamarket_article#create"
  patch "/fleamarket/articles/:id", to: "fleamarket_article#update"
  delete "/fleamarket/articles/:id", to: "fleamarket_article#destroy"

end
