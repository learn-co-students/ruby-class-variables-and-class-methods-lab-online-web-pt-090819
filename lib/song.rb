require 'pry'
class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << genre
    @@artists << artist
  end 
  
  def self.count
    @@count 
  end 
  
  def self.genres 
    return self.genre_count.keys
  end 
  
  def self.artists
    return self.artist_count.keys
  end 
  
  def self.genre_count
    genres_hash = {}
    @@genres.each do |genre_type|
      if genres_hash[genre_type]
        genres_hash[genre_type] += 1 
      else
        genres_hash[genre_type] = 1
      end 
    end 
    return genres_hash
  end 
  
  def self.artist_count
    artists_hash = {}
    @@artists.each do |artists_name|
      if artists_hash[artists_name]
        artists_hash[artists_name] += 1 
      else
        artists_hash[artists_name] = 1 
      end 
    end 
    return artists_hash
  end 
end 