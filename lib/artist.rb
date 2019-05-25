
class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end
  
  def songs
    @songs
  end
  
  def save
    @@all << self
  end

  def all
    @@all
  end
  
  def print_songs
    self.songs.each { |song| puts song.name }
  end

end