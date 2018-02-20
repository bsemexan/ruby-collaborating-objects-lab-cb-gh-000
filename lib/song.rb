class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
   artist_name = filename.split(" - ")[0]
   name = filename.split(" - ")[1].gsub(".mp3", "")
   song = self.new_by_name(name)
   song.artist_name = artist_name
   song
 end
end
