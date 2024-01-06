Rails.application.routes.draw do
  root "fleamarket_article#index"

  get "/fleamarket", to: "fleamarket_article#index"
  get "/fleamarket/:id", to: "fleamarket_article#show"

end
