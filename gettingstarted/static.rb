
NORTH   = 1
EAST    = 2
SOUTH   = 3
WEST    = 4

p NORTH
p EAST

def walk(direction)
    if direction == :north
        puts "go to north"
    end
end

walk(:north)