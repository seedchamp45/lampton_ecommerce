require 'test_helper'

class DiyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get diy_index_url
    assert_response :success
  end

  test "should get show" do
    get diy_show_url
    assert_response :success
  end

end
