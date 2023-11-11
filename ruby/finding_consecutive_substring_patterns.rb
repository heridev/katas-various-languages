# Find consecutive substring patterns groups based on an input pattern and a string and return the number of matches following these constraints
# 0 - vowels plus y (a, e, i, o, u, y)
# 1 - the rest of the consonants without vowels and y

# For example
# find_pattern_matching_count('010', 'amazing')
# Should return 2
# because vowel constant vowel
# amazing - ama - matches
# mazing
# azing  - azi matches
# zing
# ing
# ng
# g

# Another example
# find_pattern_matching_count('100', 'codesignal')
# Should return 0 matches
# because constant vowel vowel
# codesignal
# odesignal
# designal
# esignal
# signal
# ignal
# gnal
# nal
# al
# l

VOWELS_AND_Y = %w[a e i o u y].freeze
CONSONANTS = ('b'..'z').to_a - VOWELS_AND_Y

def find_pattern_matching_count(pattern, string_value)
  return 0 if string_value.to_s.empty?

  matching_pattern = create_matching_pattern(pattern)
  counter = 0
  size_elements = string_value.size
  size_elements.times do
    counter += 1 if string_value.match?(matching_pattern)
    string_value = string_value[1, string_value.size - 1]
  end

  counter
end

def create_matching_pattern(pattern)
  # '100' or 010'
  final_pattern = []
  pattern.each_char do |character|
    result = character == '0' ? "[#{VOWELS_AND_Y.join('')}]" : "[#{CONSONANTS.join('')}]"
    final_pattern << result
  end

  "^#{final_pattern.join('')}"
end

p "find_pattern_matching_count('100', 'codesignal') #{find_pattern_matching_count('100', 'codesignal')}" # 2
p "find_pattern_matching_count('010', 'amazing') #{find_pattern_matching_count('010', 'amazing')}" # 0
p "find_pattern_matching_count('010', 'anotheramazing') #{find_pattern_matching_count('010', 'anotheramazing')}" # 4
p "find_pattern_matching_count('010', 'ayasee') #{find_pattern_matching_count('010', 'ayasee')}" # 1(
