class Artist
  attr_accessor :song, :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
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
    @song.each { |song| puts song.name }
  end
end
