require "test_helper"
require 'benchmark'

class FleamarketArticleControllerTest < ActionDispatch::IntegrationTest
  test "performance test" do
    get "/fleamarket/1"
    assert_response :success
  end


end
