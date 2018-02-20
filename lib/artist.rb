class Artist

  attr_accessor :songs, :name

  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    @@all.index { |artist| artist.name == name } || self.new(name)
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
end
