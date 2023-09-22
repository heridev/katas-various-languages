
=begin
  Give five positive integers, find the minimum and maximum values that 
  can be calculated by summing exactly four of the five integers
  Then print the respective minimum and maximum values as single line of two space-separated long integers.
=end
def mini_max_sum(array)
  sorted_array = array.sort

  min_sum = sorted_array[0..-2].sum  # Excluding the last element
  max_sum = sorted_array[1..-1].sum  # Excluding the first element

  "#{min_sum} #{max_sum}"
end

puts mini_max_sum([1, 2, 3, 4, 5])  == '10 14'
puts mini_max_sum([1, 2, 10, 8, 9])  == '20 29'
puts mini_max_sum([5, 5, 5, 5, 5]) === '20 20'
puts mini_max_sum([1, 2, 10, 8, 9]) === '20 29'
