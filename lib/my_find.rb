require 'pry'

def my_find(collection)
  b = 0 
  while b < collection.length 
   if yield(collection[b])
     return collection[b]
  end
  b += 1 
 end
end