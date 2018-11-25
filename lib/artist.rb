require 'pry'
class Artist
  attr_accessor :name, :songs, :song
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
  end
end