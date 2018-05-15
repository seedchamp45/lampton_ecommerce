require 'test_helper'

class MediasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get medias_new_url
    assert_response :success
  end

  test "should get index" do
    get medias_index_url
    assert_response :success
  end

end
