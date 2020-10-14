# Happy Birthday To You
# Raphael Adams

print "What is your name? "
name = gets.chomp

i = 1
until i > 4

  output = "Happy birthday "

  case i
  when 3
    output += "dear #{ name }"
  when 4
    output += "to you."
  else
    output += "to you"
  end

  puts output
  i += 1

end
