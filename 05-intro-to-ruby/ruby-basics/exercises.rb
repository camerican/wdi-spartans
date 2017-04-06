# sets variable name to "Marcela"
name = "Marcela"

# displays the value of the variable name to the terminal
puts name

# sets variable holidays to an array of holidays
holidays = [
  "Christmas",
  "July 4th",
  "Easter"
]

# displays the value of the holidays array in the terminal
# notice how it displays all elements of the array without having to loop
puts holidays

# sets the variable holidays_and_dates to the hash object
#   where the first key "Christmas" is set to "Dec 25"
#   and the second key "Easter" is set to "April 25"

# notice how the keys are String types (take a look at the quotes around Christmas)
holidays_and_dates = {
  "Christmas" => "Dec 25",
  "Easter" => "April 22"
}

# displays the value of the key "Easter" in the terminal
puts holidays_and_dates["Easter"]

# sets the variable holidays_and_dates to the hash object
#   where the first key "Christmas" is set to "Dec 25"
#   and the second key "Easter" is set to "April 25"

# notice how the keys are Symbol types (take a look at the colon after Christmas)
holidays_and_dates = {
  Christmas: "Dec 25",
  Easter: "April 22"
}

# displays the value of the :Easter key within holidays_and_dates
#   in the terminal
puts holidays_and_dates[:Easter]

# displays what is your name in the terminal
puts "What is your name?"

# allows the user to type something in the terminal
#   and what they type will be stored within the variable name
name = gets

# displays Your name is in the terminal
puts "Your name is"

# displays the value of name in the terminal
puts name

# creates a range between 0 and 4 then
#   loops thru the range and displays
#   "currently on the number 0 iteration of this loop." then
#   "currently on the number 1 iteration of this loop." then
#   "currently on the number 2 iteration of this loop." then
#   "currently on the number 3 iteration of this loop." and lastly
#   "currently on the number 4 iteration of this loop."
for i in 0..4
  puts "currently on the number #{i} iteration of this loop."
end

# does the same thing as above in more concise syntax
(0..4).each do |item|
  puts "currently on the number #{item} iteration of this loop."
end

# creates a method called add_two that accepts one argument
#   and adds 2 to the argument passed in
def add_two(n)
  n + 2
end

# creates a method called silly_greeting that accepts no parameters
#   but displays Goobylee Glob to the terminal
def silly_greeting
  puts "Goobylee Glob"
end

# invokes the add_two method with the argument 5
# the output of this will be 7
puts add_two(5)

# invokes the silly_greeting method with no arguments
# notice how the parenthesis is ommitted yet still works
silly_greeting
