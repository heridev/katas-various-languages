# def fizz?(number)
#   number % 3 == 0
# end
#
# def buzz?(number)
#   number % 5 == 0
# end
#
# def get_fizz_buzz_for_version_one(number)
#   return 'FizzBuzz' if fizz?(number) && buzz?(number)
#   return 'Fizz' if fizz?(number)
#   return 'Buzz' if buzz?(number)
#
#   number
# end
#
# def get_fizz_buzz_for_version_two(number)
#   result = ''
#   result += 'Fizz' if number.to_s.include?('3')
#   result += 'Buzz' if number.to_s.include?('5')
#
#   result
# end
#
# def apply_all_requirements_fizz_buzz(number)
#   result = get_fizz_buzz_for_version_one(number)
#   second_value = get_fizz_buzz_for_version_two(number)
#   return "#{result}#{second_value}" if second_value
#
#   result
# end
#
# def get_fizz_buzz_for(number)
#   return 'FizzBuzz' if fizz?(number) && buzz?(number)
#   return 'Fizz' if fizz?(number)
#   return 'Buzz' if buzz?(number)
#
#   number
# end
#
# # test = (1..100).map do |number|
# #   apply_all_requirements_fizz_buzz(number)
# # end.join(',')
# # puts test
#
# # puts apply_all_requirements_fizz_buzz(35) == 'FizzBuzzBuzz'
# # puts apply_all_requirements_fizz_buzz(35)
# puts apply_all_requirements_fizz_buzz(53)
