array = %w[1 2 3 4 5 6 7 8 9 10]

def linear_search(the_array, target)
  @selected_index = -1
  the_array.each_with_index do |element, index|
    if target == element.to_i
      @selected_index = index
      break
    end
  end

  @selected_index
end

puts linear_search(array, 4)
