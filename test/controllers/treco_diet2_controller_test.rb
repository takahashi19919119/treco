require "test_helper"

class TrecoDiet2ControllerTest < ActionDispatch::IntegrationTest
  test "should get treco_diet2" do
    get treco_diet2_treco_diet2_url
    assert_response :success
  end
end
