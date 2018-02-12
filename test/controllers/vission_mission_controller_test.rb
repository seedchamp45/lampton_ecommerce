require 'test_helper'

class VissionMissionControllerTest < ActionDispatch::IntegrationTest
  test "should get vissionmission" do
    get vission_mission_vissionmission_url
    assert_response :success
  end

end
