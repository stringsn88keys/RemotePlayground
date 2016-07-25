class Key
  attr_reader :name

  def initialize(key_name)
    @name = key_name
  end
  def to_partial_path
    'key'
  end
end