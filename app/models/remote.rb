class Remote
  attr_reader :name

  def self.all
    @remotes = remotes_list_command.each_line.map { |x| Remote.new(x.split(/ +/)[1].chomp) }
  end

  def self.find(remote_name)
    Remote.new(remote_name)
  end

  def initialize(remote_name)
    @remote_name = remote_name
  end

  def keys
    @keys ||= remotes_list_keys_command.each_line.map { |k| Key.new(self, k.split(/ +/)[2].chomp) }
  end

  def to_s
    name
  end

  def to_partial_path
    'remote'
  end

  def self.remotes_list_command
    `irsend LIST "" "" 2>&1`
  end

  def remotes_list_keys_command
    `irsend LIST #{remote_name} "" 2>&1`
  end
end 
