require 'pry'

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

  def new_song(song_name, genre)
    Song.new(song_name, self, genre)
  end

  def songs
    artist_array = Song.all.select{|song_instance| song_instance.artist == self}
    #binding.pry
  end

  def genres
    #binding.pry
    songs.collect{|song_instance| song_instance.genre}.uniq
  end
end
