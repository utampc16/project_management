require 'test_helper'

class Home1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home1_index_url
    assert_response :success
  end

end
