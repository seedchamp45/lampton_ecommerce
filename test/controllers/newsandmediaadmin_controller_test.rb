require 'test_helper'

class NewsandmediaadminControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get newsandmediaadmin_new_url
    assert_response :success
  end

  test "should get index" do
    get newsandmediaadmin_index_url
    assert_response :success
  end

end
