#!/usr/bin/env ruby


if ARGV.length != 1
  puts "Usage of ccwc <filename>"
  exit 1
end

filename = ARGV[0]

unless File.exist?(filename)
  puts "Error: file '#{filename}' does not exist"
  exit 1
end

line_count = File.readlines(filename).size
puts line_count

# Then once you have it you can make executable from any folder in your mac
# 1. make it executable
# chmod +x ccwc.rb
# 2. Add it to a folder that is loaded in the PATH
# for eg: usr/local/bin/
#  cp ccwc.rb /usr/local/bin/ccwc
#  then you can execute it anywhere if you have ruby in your system :)
