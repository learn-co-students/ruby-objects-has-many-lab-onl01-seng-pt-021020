class Song 
  attr_accessor :artist, :name 
  
  @@all = [] #class variable set to array
  
  def initialize(name) #is initialized with an argument of name
    @name = name
    save #pushes new instances into a class variable called @@all upon initialization
  end 
  
  def save
    @@all << self
  end 
  
  def self.all #.all is a class method that returns an array of all song instances that have been created 
    @@all
  end 
    
  def artist_name
      if artist 
        self.artist.name #the song knows the name of its artist 
      else 
        nil #returns nil if the song does not have an artist 
      end
  end 
end 

