class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)

  end

  def self.new_by_filename(name)
    file = name.split(" - ")
    song = self.new.file[0]
    artist = Artist.new.file[1]
    artits.songs << song
    song.artist = artist
    artist.save
    song
 end

 def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
