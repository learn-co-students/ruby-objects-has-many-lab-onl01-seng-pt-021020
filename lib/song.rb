class Song
  attr_accessor :title, :artist

  @@all = []

  def initialize(songs)
    @title = songs
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @title
  end

  def artist
    @artist
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
end
