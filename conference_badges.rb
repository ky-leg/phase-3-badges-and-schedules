# Write your code here.

def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator array
    array.map do |name|
        badge_maker name
    end
end

def assign_rooms array
    i=0
    array.map do |name| 
        i+=1
        "Hello, #{name}! You'll be assigned to room #{i}!"
    end
end

def printer array 
    batch_badge_creator(array).map {|str| puts str}

    rooms = assign_rooms(array)
    rooms.map {|str| puts str}
end

names =["jim", "helen", "ur mom"]
printer names
