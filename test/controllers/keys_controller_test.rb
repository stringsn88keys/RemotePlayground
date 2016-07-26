require 'test_helper'

class KeysControllerTest < ActionDispatch::IntegrationTest
  def setup
    Key.any_instance.stubs(:send_once)
    Remote.any_instance.stubs(:remotes_list_keys_command).returns(File.read(Rails.root.join('test', 'fixtures', 'seiki_list.txt')))
  end
  test "should return success if ajax request" do
    get remote_key_path('a', 'b'), xhr: true
    assert_response :success
  end

  test "should redirect to remote page if normal get" do
    get remote_key_path('a', 'b')
    assert_redirected_to remote_path('a')
  end
end
