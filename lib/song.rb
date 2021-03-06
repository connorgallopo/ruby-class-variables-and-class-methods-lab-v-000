require "pry"
class Song
	@@count = 0
	@@artists = []
	@@genres = []
	attr_accessor :name, :artist, :genre

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1
		@@artists << artist
		@@genres << genre
	end

  class << self # all defined class methods are being called on self
		def count
			@@count
		end

		def artists
			@@artists.uniq
		end

		def genres
			@@genres.uniq
		end

		def genre_count
			genre_count = {}
			@@genres.each do |genre|			
			if genre_count[genre]
	        genre_count[genre] += 1 
	      else
	        genre_count[genre] = 1
	      end
	    end
	    genre_count
		end

		def artist_count
			artist_count = {}
			@@artists.each do |artist|
				if artist_count[artist]
					artist_count[artist] += 1
				else
					artist_count[artist] = 1
				end
			end
			artist_count
		end
	end
end