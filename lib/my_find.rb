require 'pry'

# Define our method 'my_find' passing one parameter 'collection'

def my_find(collection)

  # Declare variables
  i = 0

  # Begin our while loop
  while i < collection.length
    if yield(collection[i])
      return collection[i]
    end
    i += 1
  end

end

# Declare the value for our collection variables
collection = (1..100).to_a

# Evoke our code block being passed through yield
my_find(collection) do |i|
  i % 3 == 0 and i % 5 == 0
end
