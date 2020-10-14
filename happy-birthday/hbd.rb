# Happy Birthday To You
# Raphael Adams

print "What is your name? "
name = gets.chomp

i = 1
while i <= 4

  print "Happy birthday "

  if i != 3
    print "to you"
    print "." if i == 4
    print "\n"
  else
    print "dear #{ name }\n"
  end
  
  i += 1

end
