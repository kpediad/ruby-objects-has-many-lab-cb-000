class Artist
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end

  def self.all
    @@all
  end

  def self.song_count
    self.all.collect{|artist| artist.songs.count}.inject(:+)
  end

end
