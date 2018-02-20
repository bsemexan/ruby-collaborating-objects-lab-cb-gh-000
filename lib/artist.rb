class Artist
  attr_accessor :song, :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
  end

  def self.find_or_create_by_name(name)
    @@all.index { |artist| artist.name == name } || self.new(name)
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
end
