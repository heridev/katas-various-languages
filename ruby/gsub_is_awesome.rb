# replace all the vowals with an asterisk
# puts 'hello'.gsub(/[aieou]/, '*')

# replace all characters except vowals
# puts 'hello'.gsub(/[^aieou]/, '*')
# iterate through the matches
# puts 'hello'.gsub(/[aeiou]/) { |match| match.upcase }

# searching spaces
# puts 'hello hola hola     yes'.gsub(/\S+/) { |_match| '*' }
# puts 'hello hola hola     yes'.gsub(/\s./, '<space>')

# Reversing words but without changing spaces in the middle
# 'eW tnaw ot egnahc eht redro tuohtiw gnignahc secaps'.gsub(/\S+/, &:reverse)

# puts 'howdy'.gsub(/([a-z])([a-z])/, '\2\1')
# puts 'hellow my friend how '
# puts 'are you'.gsub(/([a-z]+) ([a-z]+)/, '\2 \1')

p 'hello'.match(/([a-z])([a-z])/)[0]
p 'hello'.match(/([a-z])([a-z])/)[1]
p 'hello'.match(/([a-z])([a-z])/)[2]
p 'hello'.match(/([a-z])([a-z])/)
p 'something'.match(/([a-z])([a-z])/)
