require 'pry'

# def my_find(collection)
#   idx = 0
#   while idx < collection.length
#     if yield(collection[idx])
#       return collection[idx]
#     end
#   idx += 1
#   end
# end

def my_find(collection)
  i = 0
  while i < collection.length
  return collection[i] if yield(collection[i])
  i += 1 
  end
end