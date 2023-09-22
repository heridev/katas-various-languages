=begin
multiple lines
are going here
and super duper for me 
yaaaya
=end

# create a multiline string with <<TEXT
value=<<TEXT
  this is a multiline string
TEXT

value_two=<<TEXT
  this is a multiline string
  second line
  third line
TEXT

value = %q{this is a multiline string
  second line
  third line
}
# puts value
# puts value_two

puts %q{this is 
  a multiline string
  another option
  line
}
