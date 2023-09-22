@how_many = 0
# if you want get the min heapify element in the left
# instead of searching by the largest 
# we just need to searc by the lowest, so basically 
# changing the if left and right conditions
# and replacing the largest with the lowest variably 
# respectively
def max_heapify(arr, i, n)
  largest = i

  left = 2 * i + 1
  right = 2 * i + 2

  largest = left if left < n && arr[left] > arr[largest]

  largest = right if right < n && arr[right] > arr[largest]

  if largest != i
    @how_many += 1
    arr[i], arr[largest] = arr[largest], arr[i]
    max_heapify(arr, largest, n)
  end
end

#                 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
# original_array = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
# original_array = [1, 1, 4, 1, 5, 3, 2, 6, 5, 20, 90]
# original_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 90]
original_array = [1, 2, 3, 4, 90, 6, 7, 8, 9, 101, 100]
# original_array = [90, 10, 7, 9, 5, 6, 3, 8, 4, 90, 1]
#   new        = [3, 1, 4, 9, 5, 1, 2, 6, 5, 3, 5]
#   new        = [3, 1, 4, 9, 5, 1, 2, 6, 5, 3, 5]

puts original_array.join(', ')

n = original_array.length
(n / 2 - 1).downto(0) do |i|
  # i = 4, n = 11
  max_heapify(original_array, i, n)
end

puts original_array.join(', ')

puts "how many executions: #{@how_many}"
