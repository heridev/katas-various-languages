# producedural paradigm

def increment_counter(counter)
  counter += 1
end

def display_counter(counter)
  p counter
end

counter = 0
3.times { counter = increment_counter(counter) }
display_counter(counter)

# functional paradigm
increment = ->(x) { x + 1 }
display = ->(x) { puts x }

result = [0].map(&increment).map(&increment).first
display.call(result)
