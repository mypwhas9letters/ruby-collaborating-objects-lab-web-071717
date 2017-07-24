require 'pry'

class MP3Importer

attr_accessor :path, :artist

def initialize(filepath)
 @path = filepath
 self.files
end

def files
    @arr = Dir["#{@path}/*.mp3"]
    @arr.map! do |mp3|
      mp3[21..-1]
    end
end

def import
  #binding.pry
  @arr.each do |x|
  Song.new_by_filename(x)
  end
end

end
