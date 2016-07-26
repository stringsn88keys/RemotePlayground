class Key
  attr_reader :remote, :name

  def initialize(remote, key_name)
    @remote = remote
    @name = key_name
  end

  def to_partial_path
    'key'
  end

  def self.find(remote_name: , key_name: )
    Key.new(Remote.new(remote_name), key_name)
  end

  def send_once
    `irsend SEND_ONCE "#{remote.name}" "#{name}"`
  end
end
