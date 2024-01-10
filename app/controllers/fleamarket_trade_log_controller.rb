class FleamarketTradeLogController < ApplicationController

  def index
    articles = FleamarketArticle.where(:user_id => params[:user_id]).all.order(:id).last(10).reverse

    render json: response_format(contents: articles), status: :ok
  end

  # 만약 프론트도 같이 작업했다면 밑에 두개 컨트롤러는 딱히 만들거 같지는 않고
  # 전체 데이터를 받아온 후 거기서 분류해서 각 탭에 넣었을듯
  def sell
    articles = FleamarketArticle.where(:user_id => params[:user_id],
                                       :trade_status => FleamarketArticle.trade_statuses[:sell])
                                .all
                                .order(:id).last(10).reverse

    render json: response_format(contents: articles), status: :ok
  end

  def buy
    articles = FleamarketArticle.where(:user_id => params[:user_id],
                                       :trade_status => !FleamarketArticle.trade_statuses[:sell])
                                .all
                                .order(:id).last(10).reverse

    render json: response_format(contents: articles), status: :ok
  end

end
