class Artist 
  attr_accessor :name, :songs
  
  def initialize(name)
    @songs = []
    @name = name
   end
  
  def songs 
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
    
  end
    
  def add_song_by_name(name)
    s = Song.new(name) 
    s.artist = self
    @songs << s
  end 
  
  def Artist.song_count 
    Song.all.count
  end 
  
  
  
end