require 'pry'

class Song

attr_accessor :name, :artist

def initialize(name)
@name = name
end

def self.new_by_filename(file_name)
    songarr = file_name.split(" - ")
    newinst = self.new(songarr[1])
    newinst.artist = Artist.find_or_create_by_name(songarr[0])
    newinst.artist.songs = songarr[1]
    newinst
end

def artist_name=(artist_name)
  Artist.find_or_create_by_name(artist_name)
  #pass this songs artist into the artist class as a string
end

end



#send artist name to the artist class
