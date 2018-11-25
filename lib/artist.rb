require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all_songs = []
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    self.class.all_songs << 
    self.songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    new = Song.new(name)
    self.songs << new
    new.artist = self
  end
  
  def self.song_count
    self.songs.count
  end
  
  def self.all_songs
    @@all_songs
  end
end