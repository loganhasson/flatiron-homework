##
# Build a method that a new customer will use when entering our deli.
# The method, take_a_number, should accept the current line of people,
# along with the new person's name, and return their position in line
# (and no 0 index, these are normal people, if they are 7th in line, tell them
# that, not 6).
##
# Build a method now_serving. This method should call out (via puts) the next
# person in line and remove them from the line.
##
# Build a method line that shows people their current place in line.

deli_line = []
puts deli_line.object_id

def take_a_number(deli_line, name)
  deli_line << name
  position = deli_line.length
  puts "Welcome, #{name}! You are number #{position} in line."
  position - 1
end

def now_serving(deli_line)
  puts "Now serving #{deli_line[0]}!"
  puts deli_line.object_id
  deli_line.shift
end

def current_place(deli_line, name)
  unless deli_line.size == 0
    puts "We'll be right with you, #{name}. You are number #{deli_line.index(name) + 1} in line."
  end
end

take_a_number(deli_line, "Logan")
take_a_number(deli_line, "Brent")
take_a_number(deli_line, "Susan")
take_a_number(deli_line, "Alfred")
take_a_number(deli_line, "Erin")
take_a_number(deli_line, "Shannon")

while deli_line.length > 0
  now_serving(deli_line)
  puts deli_line.object_id
  sleep(1)
  current_place(deli_line, "Shannon")
end