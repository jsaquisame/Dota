require 'test_helper'

class AttackControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attack_index_url
    assert_response :success
  end

  test "should get show" do
    get attack_show_url
    assert_response :success
  end

end
