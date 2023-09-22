@symbols_with_value = {
  'M': '1000',
  'CM': '900',
  'D': '500',
  'CD': '400',
  'C': '100',
  'XC': '90',
  'L': '50',
  'XL': '40',
  'X': '10',
  'IX': '9',
  'V': '5',
  'IV': '4',
  'I': '1'
}

# the time complexity is
# O(N)
def decimal_to_roman(decimal_number)
  @final_value = ''
  loop do
    @symbols_with_value.each do |symbol, decimal_value|
      division = (decimal_number / decimal_value.to_i).ceil

      division.times do
        @final_value += symbol.to_s
      end
      decimal_number = decimal_number % decimal_value.to_i
    end

    break if decimal_number <= 0
  end
  @final_value
end

puts decimal_to_roman(2999)
