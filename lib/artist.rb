class Artist
  attr_accessor :name

  def initialize(art_name)
    @name = art_name
    @songs = []
  end

  def songs
    Song.all
  end

  def add_song(song)
    song.artist = self
    @songs.each do |i|
      i << song
    end
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    Song.all.count
  end
end
