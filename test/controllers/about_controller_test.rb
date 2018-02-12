require 'test_helper'

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get awards" do
    get about_awards_url
    assert_response :success
  end

end
