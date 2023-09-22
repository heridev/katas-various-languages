# Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with 6 places after the decimal.

# array = [1,1,0, -1, -1]
# there are n = 5 elements, two positive, two negative and one zero. Their ratios are 2/5 = 0.400000, 2/5 = 0.400000 and 1/5 = 0.200000. results are printed as

# 0.400000
# 0.400000
# 0.200000

def calculate_ratious(array, number_elements)
  # this is the trick to force the float calculation
  # total_elements = array.size.to_f
  total_elements = number_elements.to_f

  positives= array.count { |number| number > 0 }
  negatives = array.count { |number| number < 0 }
  zeros = array.count(0)

  puts format("%.6f", positives/ total_elements)
  puts format('%.6f', negatives/ total_elements)
  puts format('%.6f', zeros / total_elements)
end

# array = [1,1,0, -1, -1]
# array = %w(1 2 3 -1 -2 -3 0 0).map(&:to_i)
array = %w(-4 3 -9 0 4 1).map(&:to_i)
value = calculate_ratious(array, array.size)
puts "value #{value}"
