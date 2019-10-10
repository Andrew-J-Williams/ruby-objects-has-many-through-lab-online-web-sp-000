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

  def new_song(name, genre)
    Song.new(name, self, genre) # We call out 'Song' class to create a new song
  end

  def genres # Iterates over the songs associated with our artist and checks out the genre of each.
    song_list = self.songs

    song_list.map do |songs|
      songs.genre
    end

  end

end
