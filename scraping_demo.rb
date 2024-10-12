require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com

ingredient = "chocolate"
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

# returns the html data as a big string
html_file = URI.parse(url).read

# returns the html as Nokogiri XML elements, to allow to search through using CSS selectors.
html_doc = Nokogiri::parse(html_file)

# look inside the html doc, using css selectors.
# 
html_doc.search(".layout-md-rail__primary .card__content a").each do |element|
  puts element.text
  # puts element.attribute("href").value
end


