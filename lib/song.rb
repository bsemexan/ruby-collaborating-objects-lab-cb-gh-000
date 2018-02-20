class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
  end

  def self.new_by_filename(name)
    file = self.new
    file.name = name
    file
 end
end
