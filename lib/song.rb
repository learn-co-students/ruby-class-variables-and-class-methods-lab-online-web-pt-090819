class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1
    
    @@genres << genre #if !@@genres.include?(genre)
    
    @@artists << artist #if !@@artists.include?(artist)
    
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
    newHash = {}
    @@genres.each(){|genre|
      if newHash.include?(genre)
        newHash[genre] += 1
      else 
        newHash[genre] = 1 
      end
    }
    newHash
  end
  
  def self.artist_count
    newHash = {}
    @@artists.each(){|artist|
      if newHash.include?(artist)
        newHash[artist] += 1 
      else 
        newHash[artist] = 1 
      end
    }
    newHash
  end
end 