Rails.application.routes.draw do
  root "fleamarket_article#index"

  get "/fleamarket/articles", to: "fleamarket_article#index" # 게시글 목록 조회
  get "/fleamarket/articles/:id", to: "fleamarket_article#show" # 게시글 단건 조회
  post "/fleamarket/articles", to: "fleamarket_article#create" # 게시글 생성
  put "/fleamarket/articles/:id", to: "fleamarket_article#update" # 게시글 수정
  delete "/fleamarket/articles/:id", to: "fleamarket_article#destroy" # 게시글 삭제

  get "/fleamarket/user/articles/like", to: "fleamarket_article_likes#index" # 유저가 좋아요한 게시글 목록 보여주기
  post "/fleamarket/articles/like", to: "fleamarket_article_likes#create" # 게시글 좋아요
  delete "/fleamarket/articles/like/:article_id", to: "fleamarket_article_likes#destroy" # 좋아요 해제하기

  get "/fleamarket/user/trades", to: "fleamarket_trade_log#index" # 유저 거래내역 목록
  get "/fleamarket/user/trades/sell", to: "fleamarket_trade_log#sell" # 유저 구매 게시글 목록
  get "/fleamarket/user/trades/buy", to: "fleamarket_trade_log#buy" # 유저 판매 게시글 목록



  get "/dummy-load/a/address", to: "dummy_data#address" # 데이터 적재용도 (주소 코드)
  get "/dummy-load/b/user-article", to: "dummy_data#user_article" # 데이터 적재용도 (유저)
  # get "/dummy-load/c/article", to: "dummy_data#article" # 데이터 적재용도 (게시글)
  # get "/dummy-load/d/article-like", to: "dummy_data#article_like" # 데이터 적재용도 (게시글 좋아용)



end
