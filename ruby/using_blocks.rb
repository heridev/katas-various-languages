## Different ways to use blocks
### Different ways to pass and execute a block in method
# 1. using parameters and using block_given? and using yield
def repeat(n)
  n.times { yield } if block_given?
end

repeat(2) { puts 'welcome to Ruby blocks' }
=begin
output:
  Welcome to Ruby blocks
  Welcome to Ruby blocks
=end

# 2. using &block, checking block, using block.call or a mixed of any of them
def repeat(n, &block)
  # n.times { block.call } if block
  # n.times { yield } if block
  n.times { block.call } if block_given?
end

repeat(3) { puts 'different ways to execute a method' }

## 3. Pass the block to other arrays methods(enumerables) that accept a block e.g select, each, detect, etc

def find_max_number(collection, &block)
  block ? collection.select(&block) : collection.max
end

array = [1, 5, 111, 20, 200, 300]
find_max_number(array) # 300
find_max_number(array) { |element| element > 100  }  # [111, 200, 300]
find_max_number(array) { |element| element  }.min # 1

## another example
### Passing an argument to a block coming from a different block
def generate_random_numbers(min, max, &block)
  yield (rand(min..max)) if block_given?
end

my_print_proc = Proc.new {|the_value| puts "the random numbers is: #{the_value}"}
10.times do 
  # generate_random_numbers(1, 49, &my_print_proc)
  # or
  generate_random_numbers(1, 49) {|the_value| puts "the random numbers is: #{the_value}"}
end
