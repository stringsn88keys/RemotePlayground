class Key
  attr_reader :remote, :name

  def initialize(remote, key_name)
		@remote = remote
    @name = key_name
  end

  def to_partial_path
    'key'
  end

	def push
		`irsend SEND_ONCE`
	end
end
