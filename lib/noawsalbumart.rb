require_relative "noawsalbumart/version"
require "nokogiri"
require "open-uri"

module Noawsalbumart
	INVALID = ["", "nil", "null", nil]
	def self.search(artist_name, album_name)
		return "Album Art Not Found" if INVALID.include?(artist_name) || INVALID.include?(album_name)
		query = query_string(artist_name, album_name)
		retries = 3
		begin
			doc = Nokogiri::HTML(open("http://www.amazon.com/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=#{query}&rh=i%3Aaps%2Ck%3A#{query}").read, nil, 'utf-8')
		rescue OpenURI::HTTPError => error
		  response = error.io
		  puts response.status
		  puts "Retrying #{retries} more times"
		  retries -= 1
		  sleep 120
		  retry
		end 
		doc.css("#result_0 img").attr("src").value
	end

  def self.query_string(artist_name, album_name)
		artist_query = artist_name.split.join("+")
		album_query = album_name.split.join("+")
		artist_query + "+" + album_query
  end

  class << self
  	private :query_string
  end

end

