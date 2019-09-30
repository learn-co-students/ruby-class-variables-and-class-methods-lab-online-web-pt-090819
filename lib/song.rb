class Song
attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
@name = name
@artist = artist
@genre = genre
@@count += 1
@@genres << genre
end

  @@count = 0
  #["lucifer", "Jay-Z", "rap"]
  
  def self.count
    @@count.length
end
  
  @@artists = ["Jay-Z", "Jay-Z", "Brittany Spears"]

  def self.artists
@@artists
  end
  
  @@genres = []
  # =  ["rap", "rap", "pop"]

  def self.genres
  @@genres.uniq
  end
  
  @@genre_count = {} 
  def self.genre_count
   @@genre_count[genre] = []
   @@genres.each do |x|
   @@genres[genre] << x
 end
  end
  
  @@artist_count = {}
  def self.artist_count
    @@artist_count[artists] = []
    @@artists.each do |artist|
    @@artist_count[artist] << artist
  end
  end
  end



lucifer = Song.new("Lucifer", "Jay-Z", "rap")
Song.count
Song.artists
Song.genres
Song.genre_count
Song.artist_count