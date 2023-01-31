require "test_helper"

class UserManagementseControllerTest < ActionDispatch::IntegrationTest
  test "should get treco_diet_main2" do
    get user_managementse_treco_diet_main2_url
    assert_response :success
  end
end
