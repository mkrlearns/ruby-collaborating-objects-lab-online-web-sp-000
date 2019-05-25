
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

  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    self.all.find{ |artist| artist.name == name} || self.new(name).save
  end
  
  def print_songs
    self.songs.each { |song| puts song.name }
  end

end