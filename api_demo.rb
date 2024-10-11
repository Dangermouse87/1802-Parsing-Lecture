require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub 
username = "enter username here"
url = "https://api.github.com/users/#{username}"
