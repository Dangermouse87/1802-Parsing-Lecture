require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com

ingredient = "chocolate"
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"
