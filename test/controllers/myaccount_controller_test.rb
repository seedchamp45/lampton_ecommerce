require 'test_helper'

class MyaccountControllerTest < ActionDispatch::IntegrationTest
  test "should get myaccount" do
    get myaccount_myaccount_url
    assert_response :success
  end

end
