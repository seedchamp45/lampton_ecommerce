require 'test_helper'

class WishlistControllerTest < ActionDispatch::IntegrationTest
  test "should get wishlist" do
    get wishlist_wishlist_url
    assert_response :success
  end

end
