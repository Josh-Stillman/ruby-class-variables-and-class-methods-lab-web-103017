class Song

@@count = 0
@@genres = []
@@artists = []

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
  @@genres.inject({}) {|hash, element| hash.has_key?(element) ? hash[element] += 1 : hash[element] = 1
  hash }
end

def self.artist_count
  @@artists.inject({}) {|hash, element| hash.has_key?(element) ? hash[element] += 1 : hash[element] = 1
  hash}
end

attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end


end
