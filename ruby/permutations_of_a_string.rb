# my_array = %w[a b c d]

puts 'permutation of a string with repeated elements and different combinations'

my_array = %w[a b c d]
# this will ouput
# 27 permutations
# aaa, aab, aac, aba, abb, abc, aca, acb, acc,
# baa, bab, bac, bba, bbb, bbc, bca, bcb, bcc,
# caa, cab, cac, cba, cbb, cbc, cca, ccb, ccc

array_size = my_array.size

@how_many_interactions = 0
# Time complexity would be O(N * N!)
# Space complexity would be O(N!)
def concatenate_elements(value, current_array, size)
  current_array.each do |next_value|
    @how_many_interactions += 1
    if value.size == size - 1
      @permutation_strings << "#{value}#{next_value}"
    else
      concatenate_elements("#{value}#{next_value}", current_array, size)
    end
  end
end

@permutation_strings = []
my_array.each do |value|
  concatenate_elements(value, my_array, array_size)
end

puts "how many interactions for a #{my_array.size} 'element: #{@how_many_interactions}"
puts @permutation_strings.size
puts @permutation_strings.join(', ')

puts 'Permutations of a string without repeating elements'

# examples:

@how_many_interactions = 0

# Time complexity would be O(N * N!)
# Space complexity would be O(N!)
def recursive_especial_permutations(build_in_progress_permutation, original_array, current_permutations)
  original_array.each do |new_current_element|
    @how_many_interactions += 1
    next if build_in_progress_permutation.include? new_current_element

    if build_in_progress_permutation.size == original_array.size - 1
      current_permutations << build_in_progress_permutation + new_current_element
    else
      recursive_especial_permutations(
        build_in_progress_permutation + new_current_element,
        original_array,
        current_permutations
      )
    end
  end
end

# In this exercise, we do not want to repeat elements in the permutations, so here an expected output for a given array
# another_array = [a b c d]
# valid permutations must be:
#   abcd
#   abdc
#   acbd
#   acdb
#   adbc
#   adcb
#   bacd
#   badc
#   bcad
#   bcda
#   bdac
#   bdca
#   cabd
#   cadb
#   cbad
#   cbda
#   cdab
#   cdba
#   dabc
#   dacb
#   dbac
#   dbca
#   dcab
#   dcba
new_values = []
another_array = %w[a b c d]
another_array.each do |element|
  recursive_especial_permutations(
    element,
    another_array,
    new_values
  )
end

puts new_values
puts @how_many_interactions

def brute_force_calculation
  @values = []
  %w[a b c].each do |element_one|
    %w[a b c].each do |element_two|
      next if element_one == element_two

      %w[a b c].each do |element_three|
        next if element_two == element_three
        next if element_one == element_three

        @values << element_one + element_two + element_three
      end
    end
  end
  @values
end
# puts brute_force_calculation
