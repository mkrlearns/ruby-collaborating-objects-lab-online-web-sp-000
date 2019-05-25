class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

# .glob("somedirectory/*.php")
  def files
    Dir.entries(@path).select{|a| a.match(/mp3/)}
  end

  def import
    self.files.each { |file| Song.new_by_filename(file) }
  end

end