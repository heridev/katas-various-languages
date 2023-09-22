require_relative 'b'

module C 
  include B
end

C.call
