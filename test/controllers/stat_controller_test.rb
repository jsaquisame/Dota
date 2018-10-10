require 'test_helper'

class StatControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stat_index_url
    assert_response :success
  end

  test "should get show" do
    get stat_show_url
    assert_response :success
  end

end
