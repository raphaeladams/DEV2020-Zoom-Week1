# Leap Year
# Raphael Adams

# Accept a year from the user, determine if it's a leap year
# If an invalid year is entered, re-prompt for a valid one

valid_year = false
until valid_year

  print "Enter a year: "
  input = gets.chomp

  if (input.scan(/\D/).empty?)
    valid_year = true
  else
    puts "#{ input } is not a valid year"
  end
    
end

year = Integer(input)

if year % 400 == 0 || 
  (year % 4 == 0 && year % 100 != 0)
  puts "#{ input } is a leap year"
else
  puts "#{ input } is not a leap year"
end