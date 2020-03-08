require 'pry'

class Artist 
 attr_accessor :name, :songs
 
 
  def initialize(name)
  @name = name
  end  
 
  def songs
   Song.all.select do |song|
     song.artist == self #self is the instance of that artist we currently working on
    end
   end
   
   def add_song(song) #tell song it belongs to that artist
      song.artist = self #song argument is an instance of Song
  end
  
  def add_song_by_name(song_name) #we want to use the add_song method
    new_song = Song.new(song_name) #set the new song = to new_song
    add_song(new_song) #and pass it in our add_song method,which adds a song to an artist's collection
  end 
  
  def self.song_count #returns a total num of songs
    Song.all.count
  end  
end  


