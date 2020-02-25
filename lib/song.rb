class Song
  attr_reader :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist=(artist)
    artist.songs << self
    @artist = artist
  end
  
  def artist_name
    self.artist.name if self.artist
  end
  
end