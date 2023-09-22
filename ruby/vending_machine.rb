CENTS_DENOMINATIONS = {
  '50c' => 50,
  '25c' => 25,
  '10c' => 10,
  '5c' => 5,
  '1c' => 1
}

# chat GTP solution
def get_change(payment, cost)
  denominations = [1, 5, 10, 25, 50, 100] # in cents
  change = ((payment - cost) * 100).round # change in cents
  puts "change #{change}"
  results = []

  denominations.reverse.each do |denom|
    # puts "denom #{denom}"
    count = change / denom # how many of this denomination we need
    # puts "count #{count}"
    change -= count * denom # update the remaining change owed
    puts "new_chnage #{change}"
    results.unshift(count) # prepend the count to the results, since we started with the largest denomination
  end

  results
end

# second solution
# it took me 35 minutes

CENTS_DENOMINATIONS = {
  '50c' => 50,
  '25c' => 25,
  '10c' => 10,
  '5c' => 5,
  '1c' => 1
}

def get_change2(money_entered, price_of_item)
  @result = []
  diff = (money_entered.to_f - price_of_item.to_f).round(2)
  total_dollars = diff.to_i / 1
  @result << total_dollars
  remainder_cents = (diff.to_f - total_dollars.to_f).round(2)

  CENTS_DENOMINATIONS.each do |name_denomination, value_in_cents|
    total_in_cents = remainder_cents * 100
    get_division_result = total_in_cents.to_f / value_in_cents.to_f

    if get_division_result < 1
      @result << 0
      next
    end

    total_coins = get_division_result.to_i / 1
    # 4.01 - 4
    @result << total_coins
    new_total = ((get_division_result.to_f - total_coins.to_f) * value_in_cents).round(2)
    remainder_cents = new_total / 100
  end

  @result.reverse
end

# puts get_change(4, 3.14).join(",")
# puts get_change(4, 3.14) ==    [1, 0, 1, 1, 1, 0] # 0.86

# first solution
# def get_change(money_entered, price_of_item)
#   difference = (money_entered.to_f - price_of_item.to_f).round(2)
#   final_change = []

#   DENOMINATIONS.each do |_denomination, number_of_cents|
#     # putss "denomination: #{denomination}"
#     total_cents = difference * 100

#     how_many_values = (total_cents / number_of_cents).to_i
#     putss "how many #{how_many_values}"
#     final_change << how_many_values

#     new_value = total_cents - (how_many_values * 100)
#     putss "total cents #{total_cents}"
#     substract_cents = how_many_values.to_f * number_of_cents
#     putss "difference #{difference}"
#     putss "denomiation #{_denomination}"
#     denomination_value = number_of_cents.to_f / 100.0
#     difference = (difference - denomination_value).round(2)
#     putss "difference #{difference}"
#   end

#   final_change.reverse
# end


get_change(3.14, 1.99)

# puts get_change(3.14, 1.99) == [0, 1, 1, 0, 0, 1] # 1.15

#                               1c, 5c, 10c, 25c, 50c, and $1
puts get_change(5, 0.99) ==    [1, 0, 0, 0, 0, 4] # 4.01
# puts get_change(3.14, 1.99) == [0, 1, 1, 0, 0, 1] # 1.15
# puts get_change(3, 0.01) ==    [4, 0, 2, 1, 1, 2] # 2.99
# puts get_change(4, 3.14) ==    [1, 0, 1, 1, 1, 0] # 0.86
# puts get_change(0.45, 0.34) == [1, 0, 1, 0, 0, 0] # 0.11
