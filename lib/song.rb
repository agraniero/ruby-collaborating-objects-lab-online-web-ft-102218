class Song
  attr_accessor :artist, :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.artist(name)
    @name = Artist.new(name)
    
  end
  
  def self.new_by_filename(filename)
    file = filename.split(" - ")
    song = self.new(file[1])
   
  end
  
 
end