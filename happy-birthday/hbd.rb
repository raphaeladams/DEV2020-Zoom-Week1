# Happy Birthday To You
# Raphael Adams

print "What is your name? "
name = gets.chomp

i = 1


while i <= 4

  output = "Happy birthday "
  output += i != 3 ? "to you" : "dear #{ name }"
  
  print output 
  print "." if i == 4
  print "\n"

  i += 1

end
