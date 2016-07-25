require 'test_helper'

class KeysControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get keys_show_url
    assert_response :success
  end

end
