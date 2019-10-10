class Genre

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|songs| songs.genre == self}
  end

  def self.all
    @@all
  end


end
