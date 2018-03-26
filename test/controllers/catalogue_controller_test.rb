require 'test_helper'

class CatalogueControllerTest < ActionDispatch::IntegrationTest
  test "should get catalogue" do
    get catalogue_catalogue_url
    assert_response :success
  end

end
