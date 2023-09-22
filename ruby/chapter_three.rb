require 'pry'
require_relative 'utils.rb'

super_puts "Chapter three starts with this"
puts "Here’s something to do the next time you have a rainy afternoon to kill: Download
two or three significant Ruby programs, maybe utilities that you use every day or
applications you have heard of or perhaps projects whose names you just happen to
like. Once you have the code, settle in and start reading it; figure out how it works
and why it’s put together the way it is"

super_puts 'using arrays'

compact_array_syntax = %w{ first second third fourth fifth}
puts compact_array_syntax


super_puts 'dynamic args for a method'
def my_method(*args)
  args.each do |arg|
    puts arg
  end
end

def hello
  { value: 'value' }
end

my_method 1, 2, 3, "2334", Object.new, hello

super_puts 'concatenating arrays'
my_array = %w{ uno dos tres }
my_array << ['cinco', 'seis', 'siete']
puts my_array

super_puts 'using splat operator'
first_array = %w{ uno dos tres }
def using_splat_operator(one, two, three)
  puts "one: #{one}"
  puts "two: #{two}"
  puts "three: #{three}"
end

using_splat_operator *first_array

super_puts "using inject to sum"

puts numbers = [1, 1, 1, 1, 1, 1]
puts "sum of six numbers"
puts numbers.inject(0) {|accumulator, value| accumulator + value }

super_puts "using the Set class to avoid duplicates in the array"

require 'set'
set = Set.new
set.add "nuevo"
set.add "otro"
set.add "repetir"
set.add "repetir"

puts "we do not store repeated values only unique, thanks to the Set class"
puts set.to_a



