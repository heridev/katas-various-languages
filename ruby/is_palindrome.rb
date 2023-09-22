def palindrome? word
  word.split('').reverse.join('') == word
end

puts "is palindrome sugus #{palindrome?('sugus')}"
puts "is palindrome racer #{palindrome?('racer')}"
