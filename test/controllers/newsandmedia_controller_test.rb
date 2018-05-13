require 'test_helper'

class NewsandmediaControllerTest < ActionDispatch::IntegrationTest
  test "should get newsandmedia" do
    get newsandmedia_newsandmedia_url
    assert_response :success
  end

end
