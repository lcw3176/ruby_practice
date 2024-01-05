Rails.application.routes.draw do
  root "fleamarket_article#index"

  get "/fleamarket", to: "fleamarket_article#index"
  get "/fleamarket/:id", to: "fleamarket_article#show"

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
