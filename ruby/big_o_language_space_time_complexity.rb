# recursive sum of a number
# this will create:
# Time complexity of O(n)
# and
# Space complexity of O(n)
def sum_for(number)
  return 0 if number <= 0

  puts "the number of process: #{number}"
  # puts result_log
  number + sum_for(number - 1)
end

@how_many = 0
def factorial(number)
  return 1 if number <= 1

  factorial(number - 1)
end

# This will create:
# Time complexity of O(n)
# and
# Space complexity of O(1)
def sum_without_recursion(number)
  sum = 0
  loop do
    sum += number
    number -= 1
    break if number <= 0
  end

  sum
end

# puts sum_for 10
# puts sum_without_recursion(10)
puts factorial(10)
puts @how_many
