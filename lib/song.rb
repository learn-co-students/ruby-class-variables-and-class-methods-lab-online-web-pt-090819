class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@artists=[]
  @@genres=[]
  def initialize(name, artist, genre)
    @@count+=1
    @name=name
    @artist=artist
    @@artists<<@artist
    @genre=genre
    @@genres<<@genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
  arthash={}  
    @@artists.each do |a|
      if arthash[a]
        arthash[a]+=1
      else
        arthash[a]=1
      end
    end
    return arthash.keys
  end
  
  def self.artist_count
    arthash={}  
    @@artists.each do |a|
      if arthash[a]
        arthash[a]+=1
      else
        arthash[a]=1
      end
    end
    return arthash
    
  end
  
  def self.genres
    ghash={}
    @@genres.each do |a|
      if ghash[a]
        ghash[a]+=1
      else
        ghash[a]=1
      end
    end
    return ghash.keys
  end
  
  def self.genre_count
    ghash={}
    @@genres.each do |a|
      if ghash[a]
        ghash[a]+=1
      else
        ghash[a]=1
      end
    end
    return ghash
  end

  
  
end
  