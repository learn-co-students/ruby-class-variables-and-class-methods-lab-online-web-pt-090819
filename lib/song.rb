class Song
  attr_accessor :name, :artists, :genres
  
  @@count = 0
  @@genres = []
  @@names = []
  @@artists = []
  
  def initialize(name,artists,genres)
    @name = name
    @artists = artists
    @@artists << artists
    @genres = genres
    @@count += 1
    @@genres << genres
  end
  
  def artist
    @artists
  end
  
  def genre
    @genres
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
    genre_count = Hash.new(0)
    @@genres.each {|genre| genre_count[genre] += 1}
    genre_count
  end
  
  def self.artist_count
     artist_count = Hash.new(0)
    @@artists.each {|artist| artist_count[artist] += 1}
    artist_count
  end
  
end