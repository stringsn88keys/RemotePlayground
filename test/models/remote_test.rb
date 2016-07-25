require 'test_helper'

class RemoteTest < ActiveSupport::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_all_returns_3_remotes
    Remote.stubs(:remotes_list_command).returns(File.read(Rails.root.join('test', 'fixtures', 'all_remotes.txt')))
    assert_equal(Remote.all.length, 3)
  end

  def test_individual_record
    Remote.any_instance.stubs(:remotes_list_keys_command).returns(File.read(Rails.root.join('test', 'fixtures', 'seiki_list.txt')))
    assert_equal(40, Remote.find('seiki').keys.length)
  end
end