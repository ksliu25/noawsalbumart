require "noawsalbumart/version"
require "nokogiri"
require "open-uri"

class Noawsalbumart
	def search(artist_name, album_name)
		query = query_string(artist_name, album_name)
		doc = Nokogiri::HTML(open("http://www.amazon.com/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=#{query}&rh=i%3Aaps%2Ck%3A#{query}"))
	end
  # Your code goes here...

  private

  def query_string(artist_name, album_name)
		artist_query = artist_name.split.join("+")
		album_query = album_name.split.join("+")
		artist_query + "+" + album_query
  end

end
