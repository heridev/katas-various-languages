# Given an array of distinct integer vlaues,
# count the number of pairs of integers that have difference k. For example
# [1, 7, 5, 9, 2, 12, 3] and the difference k = 2
# There are four pairs with difference 2
# (1,3), (3,5), (3,5), (5, 7), (7, 9)
# the time complexity here would be
# O(n^2) because of the nested loop
def first_solution(array)
  @grouped_pairs = {}
  array.each do |value|
    array.each do |comparison_value|
      next if value == comparison_value

      result = value - comparison_value
      @grouped_pairs[comparison_value] = value if result == 2
    end
  end
  @grouped_pairs
end

my_array = [1, 7, 5, 9, 2, 12, 3]
puts my_array.join(', ')
puts first_solution(my_array)

# the time complexity for this one would be
# O(3N) -> O(N)
def second_solution(array)
  @values_compared = {}
  sorted_array = array.sort # O(N)
  sorted_array.each do |value| # O(N)
    expected_result = value - 2

    @values_compared[expected_result] = value if @values_compared.include?(expected_result) # O(1)

    @values_compared[value] = nil unless @values_compared.include?(value) # O(1)
  end

  @values_compared.reject { |_key, value| value.nil? } # O(N)
end

puts second_solution my_array

# the time complexity for this one would be
# O(2N + 2) -> O(N)
def third_solution(array)
  @values_compared = {}
  array.each do |value| # O(N)
    lower_expected = value - 2
    bigger_expected = value + 2

    @values_compared[lower_expected] = value if array.include?(lower_expected) # O(1)
    @values_compared[value] = bigger_expected if array.include?(bigger_expected) # O(1)

    @values_compared[value] = nil unless @values_compared.include?(value) # O(1)
  end

  @values_compared.reject { |_key, value| value.nil? } # O(N)
end

puts third_solution my_array
