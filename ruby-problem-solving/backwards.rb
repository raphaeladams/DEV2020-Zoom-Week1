# Backwards Names
# Raphael Adams

# Accept user's first & last name, print them in reverse order
# with a space in between.

print "Input your first and last name: "

names_array = gets.chomp.split(" ").reverse

puts "Hello #{ names_array.join(" ") }"