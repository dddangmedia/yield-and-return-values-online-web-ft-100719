require 'pry'

def hello(array)
  i = 0
  coll = []
  while i < array.length
    coll << yield(array[i])
    i += 1
  end
  coll
end
binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
