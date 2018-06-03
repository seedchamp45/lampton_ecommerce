require 'test_helper'

class PriceLowControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get price_low_index_url
    assert_response :success
  end

end
