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
   song = split_name[0].strip
   artist = split_name[1].strip
   new_song = song.new
   
 end 
 
 def artist_name=(name)
  self.artist = Artist.find_or_create_by_name(name) 
  Artist.add_song(self) 
 end 
  
end 