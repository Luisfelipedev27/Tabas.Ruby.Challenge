require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get properties_index_url
    assert_response :success
  end
  
end
