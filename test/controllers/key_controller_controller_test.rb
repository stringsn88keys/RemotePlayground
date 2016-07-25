require 'test_helper'

class KeyControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get key_controller_show_url
    assert_response :success
  end

end
