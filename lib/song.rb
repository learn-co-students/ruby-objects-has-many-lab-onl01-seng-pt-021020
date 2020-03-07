class Song 
  attr_accessor :name, :artist 

  @@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    @@all << self
  end
  
end 