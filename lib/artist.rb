class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|songs| songs.artist == self}
  end

  def new_song(name, genre) # We call our 'Song' class to create a new
    Song.new(name, self, genre)
  end

  def genres # Iterates over the songs associated with our artist and checks out the genre of each.
    song_list = self.songs

    song_list.map do |songs|
      songs.genre
    end

  end

end
