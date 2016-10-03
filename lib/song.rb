class Song

  @@artists = []
  @@genres = []
  @@count = 0

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each_with_object({}) do |genre, hash|
      if !hash.keys.include?(genre)
        hash[genre] = @@genres.count(genre)
      end
    end
  end

  def self.artist_count
    @@artists.each_with_object({}) do |artist, hash|
      if !hash.keys.include?(artist)
        hash[artist] = @@artists.count(artist)
      end
    end
  end

end
