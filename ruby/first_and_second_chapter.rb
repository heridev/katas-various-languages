require_relative 'utils.rb'

super_puts "using times"
10.times do |n|
  puts "the number is here #{n}"
end

class Document
  def title=(my_title)
    @title = my_title
  end

  def title
    @title
  end
end

d = Document.new
d.title = "my title goes here"
unless d.title == "hola"
  puts("no es hola")
end
puts d.title


super_puts "using while negated"
a = 1
while !(a > 10)
  puts a
  a += 1
end

super_puts "using until"
a = 1
until (a > 10)
  puts a
  a += 1
end

super_puts "using for"

elements = ['first element', 'second element', 'third element', 'last element']

for element in elements
  puts element
end

super_puts "In ruby most expression are true lets see some examples"

puts "this is printd if 'false' is true" if 'false'
puts "this is printed if 0 is true" if 0

