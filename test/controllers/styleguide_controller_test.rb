require 'test_helper'

class StyleguideControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get styleguide_index_url
    assert_response :success
  end

  test "should get show" do
    get styleguide_show_url
    assert_response :success
  end

end
