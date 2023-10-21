=begin
A proc behaves like a block
A lambda behaves like a method

Calling a proc yields a block
Calling a lambda executes the method
# since Ruby 1.9 you can check if a proc or a lambda is a lambda for instance, let create a lambda that sums two numbers
=end

sum_proc = Proc.new {|number_one, number_two| number_one + number_two }
sum_proc.call(10, 90) # => 100
sum_proc.lambda? # => false

=begin
Return behaves different in Lambda and Proc, basically in Lambda the flow continues but proc stops the 
Execution of the program kind of more global and executed at the method level
Lambda in contrast accepts predetermined number of arguments and returns to existing calling method
Return is treated differently by lambdas and procs
=end

def using_lambda
  the_lambda = lambda { return 'returned by lambda block' }
  puts the_lambda.call
  p 'return main method'
end

using_lambda
# output
# irb(main):021> using_lambda
# "returned by lambda block"
# "return main method"
# => "return main method"
 
def using_proc
  the_proc = Proc.new { return 'returned by proc block' }
  puts the_proc.call
  p 'return main method'
end

using_proc
# output
# irb(main):027> using_proc
# => "returned by proc block"

# 
# my_proc = Proc.new { |a| puts "a: #{a}"}
# my_proc.call(3, 3)

### Break differences between lambda and proc

## Proc with break

def test
  puts 'entering the test method'
  proc = Proc.new { puts 'entering proc and break'; break; }
  proc.call
  puts 'another puts after call'
end

# We get this error
# (irb):380:in `block in test': break from proc-closure (LocalJumpError)

=begin 
Why this is happening?
In Ruby the `break` keyword is typically used to exit a loop or an interator(each, map, times) early. However when you use it in a standalone Proc, that is not directly tied to an interator, Ruby doesn't know what to break and hence the error.

If you just want to stop or exit the proc you can use exit, but be aware that return inside a method will stop the execution from the enclosing method.

Lambda on the other hand, handles break differently and just exists the current lambda execution.

you can not use break inside an standalone Proc and you should use it outside of it, like the following example
=end

def iterator(&proc)
  puts 'entering the test'
  proc = Proc.new { puts 'entering proc';}
  proc.call
  puts 'another puts after call'
end

def test_iterator
  iterator { puts 'something';}
end

test_iterator

## Labmdas
# Because lambdas are method-like, putting a break inside a break serves an as actual return.

def lambda_break_test
  puts 'entering lambda method'
  lambda = lambda do
   puts 'first line inside lambda closure';
   break;
   puts 'last line inside lambda closure'
  end
  lambda.call
  puts 'last line of lambda enclosing method'
end

lambda_break_test

# output:
#  entering lambda method
#  first line inside lambda closure
#  last line of lambda enclosing method

## Procs do not check number of arguments, whereas lambdas do
# procs are more flexible and lambdas as method are more strict when referring to methods, for example




