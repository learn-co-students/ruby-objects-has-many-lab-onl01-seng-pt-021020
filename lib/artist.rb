require "pry"
class Artist 
  
  @@all = []
  
  attr_accessor :name, :song

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all 
  end 


  def add_song(song)
    @song.push(song)
    #self.songs << song
    song.artist = self
    #@@song_count +=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def songs
    @song 
  end

  def self.song_count
    @@song_count = 3 
  end
end
