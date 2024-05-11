require 'csv'

table = CSV.read('my_generated_file.csv', headers: true)

puts "access to the first row: #{table[0]}"
puts "access to second name: #{table[1]['name']}"
