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
   split_name = filename.split("-")  
   song = self.new(split_name[0].strip)
   artist = Artist.find_or_create_by_name(split_name[1].strip)
   song.artist = artist
 end 
 
 def artist_name=(filename)
  self.artist = Artist.find_or_create_by_name(name) 
  Artist.add_song(self) 
 end 
  
end 