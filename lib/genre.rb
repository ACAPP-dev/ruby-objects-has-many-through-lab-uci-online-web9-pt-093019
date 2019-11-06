class Genre
  attr_accessor :name
  @@all = []

  def initialize(genre_name)
    @name = genre_name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song_instance| song_instance.genre == self}
  end

  def artists
    Artist.all.select {|artist_instance| artist_instance == self}
  end
end
