# Write your code here.

def badge_maker name
  "Hello, my name is #{name}."
end 


def batch_badge_creator names
  names.map do |name|
    "Hello, my name is #{name}."
  end
end 


def assign_rooms speakers
  list = []
  speakers.each_with_index do |speaker, index|
    list <<  "Hello, #{speaker}! You'll be assigned to room #{index+1}!"
  end
  list
end 

def printer attendees
  batch_badge_creator(attendees).each do |attendee|  
    puts attendee
  end 

  assign_rooms(attendees).map do |attendee|
    puts attendee
  end 
end 

printer(["Johnny", "Sammy"]);