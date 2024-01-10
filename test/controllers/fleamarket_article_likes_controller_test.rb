require "test_helper"

class FleamarketArticleLikesControllerTest < ActionDispatch::IntegrationTest

  test "유저 관심목록 조회하기" do
    get "/fleamarket/user/articles/like.json", headers: {'Authorization' => 1}

    assert_response :success
  end

  test "게시글 좋아요 누르기" do
    post "/fleamarket/articles/like.json", params: { "article_id": 2}, headers: {'Authorization' => 1}

    assert_response :success
  end

  test "게시글 좋아요 취소하기" do
    delete "/fleamarket/articles/like/1", headers: {'Authorization' => 1}

    assert_response :success
  end

end
