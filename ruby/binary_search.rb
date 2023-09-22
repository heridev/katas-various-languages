array = %w[10 20 30 40 50 60 70 80 90 100]

def binary_search(the_array, target)
  @found_index = -1
  first_element = 0
  last_element = the_array.size - 1

  while first_element < last_element
    midpoint_position = ((last_element + first_element) / 2).ceil
    if the_array[midpoint_position].to_i == target
      @found_index = midpoint_position
      break
    end

    if target > the_array[midpoint_position].to_i
      first_element = midpoint_position + 1
    else
      last_element = midpoint_position - 1
    end
  end

  @found_index
end

puts 'When the element exists in the array'
puts binary_search(array, 50)

puts 'When the element does not exist in the array'
puts binary_search(array, 120)
