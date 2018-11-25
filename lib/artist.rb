require 'pry'
class Artist
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    new = Song.new(name)
    new.artist = self
  end
end