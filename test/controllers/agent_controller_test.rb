require 'test_helper'

class AgentControllerTest < ActionDispatch::IntegrationTest
  test "should get agent" do
    get agent_agent_url
    assert_response :success
  end

end
