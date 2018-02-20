class Artist
  attr_accessor :song, :name
  @@all

  def initialize(name)
    @name = name
  end

  def songs
    @song
  end

  def save
    @all
  end

  def print
  end
end
