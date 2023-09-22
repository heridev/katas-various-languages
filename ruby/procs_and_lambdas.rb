#Proc.new {|value| puts "the value#{value}"}.call

def using_lambda
  the_lambda = lambda { return 'bye' }
  puts the_lambda.call
  p 'hello lamda'
end

using_lambda

# def using_proc
#   the_proc = Proc.new { return 'bye proc' }
#   the_proc.call
#   p 'hello proc'
# end
# 
# puts using_proc
# my_proc = Proc.new { |a| puts "a: #{a}"}
# my_proc.call(3, 3)
