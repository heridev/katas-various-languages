INPUT  = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
OUTPUT = 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'

# for string
def rot13(secret_messages)
  secret_messages.gsub(/[A-Za-z]/) { |char| OUTPUT[INPUT.index(char)] }
end

input_two = ["qrygn", "zrrg ng pubpbyngr pbeare", "gra zra", "gjb onpxhc grnzf", "zvqavtug rkgenpgvba"]

# output = []

result = input_two.collect do |secret_message|
  rot13(secret_message)
end
puts "result #{result}"

# input_two.each do |secret_message|
#   output << rot13(secret_message)
# end


puts rot13('Why') == 'Jul'
# puts rot13('Why ') == 'Jul '
# puts rot13('Why did the chicken cross the road?') == 'Jul qvq gur puvpxra pebff gur ebnq?'
# puts rot13('Gb trg gb gur bgure fvqr!') == 'To get to the other side!'
