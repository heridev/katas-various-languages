require 'pry'
module A
  autoload(:B, './b.rb')

  def hello_from_module_a
    puts "hello from module a"
  end

  def self.call
    puts "calling call"
  end
end

A.call
class MyClass
  extend A
  include A

  def hello_two
    A::B.otro
    hello_from_module_a
  end
end

MyClass.new.hello_two
# MyClass.new.otro

