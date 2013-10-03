speakers = [
  "Edsger",
  "Ada",
  "Charles",
  "Alan",
  "Grace",
  "Linus",
  "Matz"
]

def create_badge(names)
  names.map { |name| name = "Hello, my name is #{name}." }
end

def get_rooms(names)
  room = 0
  names.map do |name|
    room += 1
    "Hello #{name}! You'll be assigned to room #{room}!"
  end
end

def print_stuff(badge_list, room_assignments)
  puts badge_list
  puts room_assignments
end

def generate(speakers)
  badges = create_badge(speakers)
  rooms = get_rooms(speakers)
  print_stuff(badges, rooms)
end

generate(speakers)
