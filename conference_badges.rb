# Write your code here.

def badge_maker(name)
  formatted_badge = "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)

  list_of_badges = []

  for attendee in attendees # attendee is a string, attendeees is an array
    attendee.prepend("Hello, my name is ")
    attendee << "."
    list_of_badges = list_of_badges.push(attendee)
  end
  list_of_badges
end

# def assign_rooms(attendees)
#
#   room_assignments = []
#
#   for attendee in attendees
#
#     index = attendees.index(attendee) + 1
#
#     attendee.prepend("Hello, ")
#     attendee << "! You'll be assigned to room #{index}!"
#     room_assignments << attendee
#   end
#   room_assignments
# end

def assign_rooms(attendees)

  room_assignments = []

  attendees.each_with_index do |attendee, index|
    room_assignments.push("Hello, #{attendee}! You'll be assigned to room #{index+1}!")
  end
  room_assignments
end

def printer(attendees)

  room_assignments = assign_rooms(attendees) # => room_assignments = [populated]
  list_of_badges = batch_badge_creator(attendees) # => list_of_badges = [populated]

  attendees.each_with_index do |attendee, index|
    puts room_assignments[index]
    puts list_of_badges[index]
  end
end
