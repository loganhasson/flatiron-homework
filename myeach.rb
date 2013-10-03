class LoganArray < Array
  def my_each
    i = 0
    while i < self.length do
      yield(self[i])
      i += 1
    end

    self
  end
end

test_array = LoganArray.new([1, 2, 3, 4, 5])

test_array.my_each do |item|
  puts "#{item}"
end

=begin
test_array_also = [1, 2, 3, 4, 5]

def my_each_screwey(array)
  i = 0
  while i < array.length do
    yield(array[i], array)
    i += 1
  end
end

my_each_screwey(test_array) do |item, array|
  puts "#{item}"
  array[0] *= 2
  array[1] *= 4
  array[2] *= 5
  array[3] *= 6
  array[4] *= 7
end
=end