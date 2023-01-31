require "test_helper"

class TrecoMainControllerTest < ActionDispatch::IntegrationTest
  test "should get treco_diet_main2" do
    get treco_main_treco_diet_main2_url
    assert_response :success
  end
end
