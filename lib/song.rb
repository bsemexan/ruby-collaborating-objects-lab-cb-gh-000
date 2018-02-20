class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(name)
    file = self.new
    song.title = name.split(" - ")[1]
    file
 end
end
