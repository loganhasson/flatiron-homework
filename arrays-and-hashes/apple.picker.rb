# Create a method, apple_picker, that will pick all the apples out of an array.
# Implement it with collect and then implement it with select.
# Write a sentence about how select differs from collect.

# apple_picker(["apple", "orange", "apple"]) #=> ["apple", "apple"]

# with collect
# def apple_picker(fruit_array)
#   fruit_array.collect do |fruit|
#     fruit if fruit == "apple"
#   end.compact
# end

# puts apple_picker(["apple", "orange", "apple"])

# with select
def apple_picker(fruit_array)
  fruit_array.select { |fruit| fruit == "apple" }
end

puts apple_picker(["apple", "orange", "apple"])

# .collect returns something for each element of the array, whereas .select
# only returns items from the array that match the condition set within
# the block that is passed to it.