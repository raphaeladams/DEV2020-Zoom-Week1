# Rearrange the Digits
# Raphael Adams

# Given an int, rearrange digits to create the largest number possible

begin

  print "Enter a number: "
  input = gets.chomp
  given_num = Integer(input)
  rescue ArgumentError

end until given_num.is_a? Integer

digits_array = input.split("")

if digits_array.first == "-"
    
  # Pop off the negative sign so we can deal with the other digits
  digits_array.shift
  digits_array.sort!

  # We can't start a number with 0 unless the number itself equals 0.
  # Shift any leading zeros to start at position 1 in the array.
  num_of_zeros = 0
    
  while digits_array.length > 1 && digits_array.first == "0"
    digits_array.shift
    num_of_zeros += 1
  end

  for i in 0...num_of_zeros do
    digits_array.insert(1, 0)
  end

  # Finally, re-add the negative sign
  largest_num = digits_array.unshift("-").join

else
  largest_num = digits_array.sort.reverse.join

end

puts largest_num