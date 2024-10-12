require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"


################### Parsing JSON #################

# Takes the JSON file, returns the data as a string
beatles = File.read(filepath)

# JSON.parse rearrages the File.read data, into a hash that ruby can manipulate
jsond_beatles = JSON.parse(beatles)

# p jsond_beatles.class

# We can then access any data as we hash, using the key / value pairs.
# p jsond_beatles["title"]

beatles = { beatles: [
  {
    first_name: "John",
    last_name: "Lennon",
    instrument: "Guitar"
  },
  {
    first_name: "Paul",
    last_name: "McCartney",
    instrument: "Bass Guitar"
  },
  # etc...
]}

###################### Writing JSON #####################

# Write to a file, wb to rewrite
File.open(filepath, "wb") do |file|
  # JSON.generate writes to a JSON file in one line
  file.write(JSON.generate(beatles))
  # JSON.pretty_generate writes to a JSON file and puts it in a hash format for easier readability
  file.write(JSON.pretty_generate(beatles))
  
end