require 'test_helper'

class CompanyProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get companyptofile" do
    get company_profile_companyptofile_url
    assert_response :success
  end

end
