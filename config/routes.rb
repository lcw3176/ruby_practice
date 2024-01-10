Rails.application.routes.draw do
  root "fleamarket_article#index"

  get "/fleamarket/articles", to: "fleamarket_article#index" # 게시글 목록 조회
  get "/fleamarket/articles/:id", to: "fleamarket_article#show" # 게시글 단건 조회
  post "/fleamarket/articles", to: "fleamarket_article#create" # 게시글 생성
  put "/fleamarket/articles/:id", to: "fleamarket_article#update" # 게시글 수정
  delete "/fleamarket/articles/:id", to: "fleamarket_article#destroy" # 게시글 삭제

  get "/fleamarket/user/:user_id/article/like", to: "fleamarket_article_likes#index" # 유저가 좋아요한 게시글 목록 보여주기
  post "/fleamarket/articles/like", to: "fleamarket_article_likes#create" # 게시글 좋아요
  delete "/fleamarket/articles/like/:article_id", to: "fleamarket_article_likes#destroy" # 좋아요 해제하기

  get "/fleamarket/user/:user_id/trades", to: "fleamarket_trade_log#index" # 유저 거래내역 목록
  get "/fleamarket/user/:user_id/trades/sell", to: "fleamarket_trade_log#sell" # 유저 구매 게시글 목록
  get "/fleamarket/user/:user_id/trades/buy", to: "fleamarket_trade_log#buy" # 유저 판매 게시글 목록



end
