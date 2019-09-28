class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count +=1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def self.count
    @@count
  end
    
  def self.genres 
    @@genres.uniq
  end
  
  def self.genre_count
   count = 0 
   genre_count = {}
   @@genres.uniq do |genre|
     count = @@genres.count {|i| i == genre}
      genre_count[genre] = count
    end
    genre_count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.artist_count
   count= 0 
   artist_count = {}
   @@artists.uniq do |artist|
     count = @@artists.count {|i| i == artist}
     artist_count[artist] = count
    end
   artist_count
   end
end