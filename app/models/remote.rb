class Remote
	attr_accessor :remote_name
	def self.all
		@remotes = `irsend LIST "" "" 2>&1`.each_line.map { |x| Remote.new(x.split(/ +/)[1].chomp) }
	end

	def initialize(remote_name)
		self.remote_name = remote_name
	end

	def to_s
		remote_name
	end

	def to_partial_path
		'remote'
	end
end 
