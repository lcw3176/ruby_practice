require "test_helper"

class FleamarketTradeLogControllerTest < ActionDispatch::IntegrationTest

  test "유저 거래내역 조회" do
    get "/fleamarket/user/trades.json", headers: {'Authorization' => 1}

    assert_response :success
  end

  test "유저 판매내역 조회" do
    get "/fleamarket/user/trades/sell.json", headers: {'Authorization' => 1}

    assert_response :success
  end

  test "유저 구매내역 조회" do
    get "/fleamarket/user/trades/buy.json", headers: {'Authorization' => 1}

    assert_response :success
  end

end
