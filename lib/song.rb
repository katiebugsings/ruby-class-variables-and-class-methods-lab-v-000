require "pry"
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
end

def self.genre_count
  {}
  self.genres.each do |genre|
    binding.pry
  end
  #return value should be hash
  #unique keys for genres
  #how many genres show up repeatedly
end
end
