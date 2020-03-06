class Artist 
  attr_accessor :name 
  
  def initialize(name) #song object is initialized with argument of name
    @name = name 
    @songs = [] #pushes new instances into a class variable called @all upon initialization
  end 
  
  def add_song(song)
    @songs << song 
    song.artist = self #takes in an argument of a song and associates that song with the artist, telling the song it belongs to that artist
  end 
  
  def songs
    Song.all.select {|song| song.artist = self} #has many songs 
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end 
  
  def self.song_count #is a class method that returns the total number of songs associated to existing artists 
    Song.all.count
  end 
    
  
end 

