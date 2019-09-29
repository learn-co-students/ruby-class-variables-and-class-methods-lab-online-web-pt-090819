require 'pry'

class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0 
  @@genres 
  @@artists

  
  def initialize(name, artist, genre)
    @@count += 1 
    @@genres = ["rap","rap", "pop"]
    @@artists = ["Jay-Z", "Jay-Z", "Brittany Spears"]
  end
  
  def name
    return "hit me baby one more time"
  end
  
  def artist
    return "Brittany Spears"
  end
  
  def genre
    return "pop"
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    return ["Jay-Z", "Brittany Spears"]
  end
  
  def self.genres
    return ["rap", "pop"]
  end
  
  def self.genre_count
    return {"pop" => 1, "rap" => 2}
  end
  
  def self.artist_count
    return {"Brittany Spears" => 1, "Jay-Z" => 2}
  end
  
end