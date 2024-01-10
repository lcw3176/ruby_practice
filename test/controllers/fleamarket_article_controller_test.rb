require "test_helper"
require 'benchmark'

class FleamarketArticleControllerTest < ActionDispatch::IntegrationTest

  test "게시글 목록을 조회한다" do
    get "/fleamarket/articles.json", headers: {'Authorization' => 1}
    puts @response.body
    assert_response :success
  end

  test "특정 게시글을 조회한다" do
    get "/fleamarket/articles/1.json", headers: {'Authorization' => 1}
    assert_response :success
  end

  test "없는 게시글을 조회하면 404를 반환한다" do
    get "/fleamarket/articles/111111111111111.json", headers: {'Authorization' => 1}
    assert_response :missing
  end

  test "게시글을 생성한다" do
    post "/fleamarket/articles.json",
         params: {
           "title": "new",
           "content": "new",
           "price": 10000,
           "wanna_trade_address": 1,
           "category": "etc_used"
         },
         headers: {'Authorization' => 1}

    assert_response :success
  end

  test "게시글을 수정한다" do
    put "/fleamarket/articles/1.json",
         params: {
           "title": "modified",
           "content": "modified",
           "price": 1,
           "wanna_trade_address": 2,
           "category": "etc_used"
         },
         headers: {'Authorization' => 1}

    assert_response :success
  end

  test "게시글을 삭제한다" do

    delete "/fleamarket/articles/1.json",
         params: {
           "title": "modified",
           "content": "modified",
           "price": 1,
           "wanna_trade_address": 2,
           "category": "etc_used"
         },
         headers: {'Authorization' => 1}

    assert_response :success
  end

end
