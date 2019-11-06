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
    #binding.pry
    songs.collect {|song_instance| song_instance.artist}
  end
end
