require 'pry'

class Song

    attr_accessor :name , :artist , :genre

    @@genres = []
    @@songs = []
    @@artists = []
    @@count = 0
    @@genre_count = {}
    @@artist__count = {}
    
    def initialize (song_name, artist, genre )
        @name = song_name
        @artist = artist
        @genre = genre
        @@count += 1
        @@songs << song_name
        @@artists << artist
        @@genres << genre
        @@genre_count= @@genres.tally
        @@artist_count = @@artists.tally
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
        @@genre_count
    end
    def self.artist_count
        @@artist_count
    end
end
