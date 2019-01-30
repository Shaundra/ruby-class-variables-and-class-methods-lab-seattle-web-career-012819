class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    gen_ct = {}
    @@genres.each { |genre| gen_ct[genre] ? (gen_ct[genre] += 1) : (gen_ct[genre] = 1) }
    gen_ct
  end

  def self.artist_count
    art_ct = {}
    @@artists.each { |artist| art_ct[artist] ? (art_ct[artist] += 1) : (art_ct[artist] = 1) }
    art_ct
  end
end
