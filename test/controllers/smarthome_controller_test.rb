require 'test_helper'

class SmarthomeControllerTest < ActionDispatch::IntegrationTest
  test "should get smarthome" do
    get smarthome_smarthome_url
    assert_response :success
  end

end
