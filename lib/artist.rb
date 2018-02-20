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
    @all
  end

  def self.find_or_create_by_name

  def print
  end
end
