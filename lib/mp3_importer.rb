require 'pry'

class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end
  
  def files 
    file_array = Dir.glob("#{self.path}/*.mp3")
    #binding.pry
    file_array.collect {|file| file.gsub("#{self.path}/", "")}
   # "./spec/fixtures/mp3s/*.mp3"
  end
  
  def import
    files.each{ |filename| Song.new_by_filename(filename)}
  end 
end