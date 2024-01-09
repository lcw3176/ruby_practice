Rails.application.routes.draw do
  root "fleamarket_article#index"

  get "/fleamarket/articles", to: "fleamarket_article#index" # 게시글 목록 조회
  get "/fleamarket/articles/:id", to: "fleamarket_article#show" # 게시글 단건 조회
  post "/fleamarket/articles", to: "fleamarket_article#create" # 게시글 생성
  put "/fleamarket/articles/:id", to: "fleamarket_article#update" # 게시글 수정
  delete "/fleamarket/articles/:id", to: "fleamarket_article#destroy" # 게시글 삭제

  post "/fleamarket/articles/like", to: "fleamarket_article_likes#create" # 게시글 좋아요

  get "/user/:user_id/article/like", to: "user#index" # 유저가 좋아요한 게시글 목록 보여주기
  post "/user/:user_id/article/like", to: "user#create" # 좋아요 등록하기
  delete "/user/:user_id/article/:article_id/like", to: "user#destroy" # 좋아요 해제하기

end
