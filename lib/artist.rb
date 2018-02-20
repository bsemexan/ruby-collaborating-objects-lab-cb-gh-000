class Artist
  attr_accessor :songs, :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.new_(name)
    artist = self.new
    artist.name = name
    artist
  end

  def self.find(name)
    @@all.detect{ |artist| artist.name == name }
  end

  def self.create(name)
    @@all.new_
  end

  def self.find_or_create_by_name(name)
    @@all.index { |artist| artist.name == name } || self.new(name)
  end

  def save
    @@all << self
    self
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
end
