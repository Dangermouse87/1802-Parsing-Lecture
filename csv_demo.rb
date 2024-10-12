require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# csv = [
#   ["something", "something", "something"],
#   ["something2", "something2", "something2"]
# ]

################# Parsing CSV

# Each element as an array

CSV.foreach(filepath) do |row|
  puts "#{row[0]} #{row[0]}"
end

# If we declare the headers, the first line of the CSV is ignored, and the values can be called like a hash

CSV.foreach(filepath, headers: :first_row) do |row|
  puts "#{row["First Name"]} #{row["Last Name"]}"
  # indexes can still be used to call values
  puts row[0]
end

###################### Storing to CSV ######################

# "wb" - rewrite the file
# "r" - read only

# Add new elements as arrays, deletes previous data and rewrites
CSV.open(filepath, "wb") do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
end