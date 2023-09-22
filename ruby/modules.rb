# frozen_string_literal: true

# this class does something
module MyModule
  def my_method
    'hello'
  end
end

# this class does something
class MyClass
  prepend MyModule
  def my_method
    'my_class'
  end
end

p MyClass.ancestors
p MyClass.new.my_method
puts 'holu'

module OtherModuleWithIncluded
  def self.included(base)
    puts "......OtherModuleWithIncluded included in #{base}"
  end

  def my_method
    puts 'my_methods'
  end
end

class OtherClass
  include OtherModuleWithIncluded
end

OtherClass
