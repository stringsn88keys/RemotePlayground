require 'test_helper'

class RemotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get remotes_index_url
    assert_response :success
  end

end
