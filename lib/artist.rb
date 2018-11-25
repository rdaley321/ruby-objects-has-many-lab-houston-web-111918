require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all_songs = []
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    self.class.all_songs << song 
    self.songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    new = Song.new(name)
    self.class.all_songs << new
    self.songs << new
    new.artist = self
  end
  
  def self.song_count
    all_songs.count
  end
  
  def self.all_songs
    @@all_songs
  end
end