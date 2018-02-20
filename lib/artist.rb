class Artist
  attr_accessor :song, :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @song
  end

  def add_song(song)
    @@all << song
    song.artist = self
  end

  def save
    @all
  end

  def print
  end
end
