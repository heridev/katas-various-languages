
=begin
Given an integer x, return true if x is a 
palindrome
, and false otherwise.

 

Example 1:

Input: x = 121
Output: true
Explanation: 121 reads as 121 from left to right and from right to left.
Example 2:

Input: x = -121
Output: false
Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
Example 3:

Input: x = 10
Output: false
Explanation: Reads 01 from right to left. Therefore it is not a palindrome.

## Algorithm approach
1. Initialize a variable to store the reversed number (initially 0).
2. Loop until the original number is greater than 0:
 - Extract the last digit using modulo 10 (number % 10).
 - Multiply the current reversed number by 10 and add the extracted digit.
 - Divide the original number by 10 (discarding the decimal part if the language does not do this automatically).

3. Return or output the reversed number.
=end

def palindrome?(x)
  return false if x < 0 

  reversed_number = reverse_integer_number(x)
  reversed_number == x
end

def reverse_integer_number(number)
  reversed_number = 0

  while number > 0 do
    last_digit = number % 10
    reversed_number = (reversed_number * 10) + last_digit
    number = number / 10
  end

  reversed_number
end

puts palindrome?(-121) == false
puts palindrome?(121) == true
puts palindrome?(10) == false
