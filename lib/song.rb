require 'pry'

class Song  
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
   def self.all 
    @@all 
  end
  
  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    song_obj = self.new(song_name)
    artist_obj = Artist.find_or_create_by_name(artist_name)
    # binding.pry 
    song_obj.artist = artist_obj
    artist_obj.songs << song_obj 
    song_obj
  end

  def artist_name=(name)
    self.artist= Artist.find_or_create_by_name(name)
    # binding.pry 
    artist.add_song(self)
  end
  
end 