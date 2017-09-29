class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << name
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist.name = self
    @songs << name
    @name
  end

end
