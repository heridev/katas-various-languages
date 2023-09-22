# The time complexity of this would be O(n^3)
def show_triplet_of(one_dimensional_array)
  one_dimensional_array.each do |i|
    one_dimensional_array.each do |j|
      one_dimensional_array.each do |k|
        puts "{#{i}, #{j}, #{k}"
      end
    end
    # puts i
  end
end

show_triplet_of([1, 2, 3])
