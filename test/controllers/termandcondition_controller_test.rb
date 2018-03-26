require 'test_helper'

class TermandconditionControllerTest < ActionDispatch::IntegrationTest
  test "should get termandcondition" do
    get termandcondition_termandcondition_url
    assert_response :success
  end

end
