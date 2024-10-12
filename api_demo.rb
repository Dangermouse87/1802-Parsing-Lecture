require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub 
username = "dangermouse87"
url = "https://api.github.com/users/#{username}"

# p url

# URI.parse returns API data as a big string
user_data = URI.parse(url).read

# p user_data

# JSON.parse takes the big string and returns it as a hash, that ruby can manipulate
user = JSON.parse(user_data)

# p "#{user["name"]} - #{user["bio"]}"