class Song
  attr_accessor :title
 
  def self.new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end

  def artist_name=(name)
    self.artist.nil 
      ? self.artist = Artist.new(name)
      : self.artist.name = name
  end

end