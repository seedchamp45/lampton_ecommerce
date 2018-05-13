require 'test_helper'

class DiyControllerTest < ActionDispatch::IntegrationTest
  test "should get diy" do
    get diy_diy_url
    assert_response :success
  end

end
