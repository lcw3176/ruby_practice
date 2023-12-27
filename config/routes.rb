Rails.application.routes.draw do
  root "fleamarket#index"

  get "/fleamarket", to: "fleamarket#index"
  get "/fleamarket/:id", to: "fleamarket#post"

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
