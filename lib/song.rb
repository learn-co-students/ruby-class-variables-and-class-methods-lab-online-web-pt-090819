require 'pry'

class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq 
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    new = {}
    @@genres.each do |gen|
      if !(new.keys.include?(gen))
        new[gen] = 1 
      elsif new.keys.include?(gen)
        new[gen] += 1 
      end
    end
    new
  end
  
  def self.artist_count
    new = {}
    @@artists.each do |art|
      if !(new.keys.include?(art))
        new[art] = 1 
      elsif new.keys.include?(art)
        new[art] += 1
      end
    end
    new
  end

end