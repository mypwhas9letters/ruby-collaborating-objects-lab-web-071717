require 'pry'

class Artist

attr_accessor :name, :songs

@@all = []

def initialize(name)
  @name = name
  @songs = []
  self.save
end

def add_song(song)
  self.songs << song
end

def save
  @@all << self
end

def self.find_or_create_by_name(artist)
  #create a new instance of the string passed in if
  #it does not exist
  if @@all.map do |x|
    x.name
  end.include?(artist) == false
      self.new(artist)
    else
      @@all.find do |x|
        x.name == artist
  end
end

end

def print_songs
  @songs.each do |x|
    puts x.name
end
end

def self.all
  @@all
end

end



#find artist if not create
