require 'pry'
class Artist 
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs 
    @songs
  end 
  
  def add_song(song)
    @songs << song 
  end 
  
  def self.find_or_create_by_name(name)
  #   if @@all.find do |artist|
  #     # binding.pry 
  #     artist.name == name 
  #     artist
  #   end 
  #   elsif  
  #     artist = Artist.new(name)
  #     @@all << artist
  #     artist
  #   else 
  #     nil
  #   end 
  
  
  end 
  
  def self.find(name) 
    @@all.find {|artist_obj| artist_obj.name == name } 
  end 
  
  def self.create_by_name(name)
    artist = Artist.new(name)
    
  end 
  
  def print_songs
    @songs.each do |song|
      puts song.name  
      end 
  end 
end 