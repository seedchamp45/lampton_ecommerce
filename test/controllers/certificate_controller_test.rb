require 'test_helper'

class CertificateControllerTest < ActionDispatch::IntegrationTest
  test "should get certificate" do
    get certificate_certificate_url
    assert_response :success
  end

end
