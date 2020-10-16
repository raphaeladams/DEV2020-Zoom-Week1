# Rearrange the Digits
# Raphael Adams

# Given an int, rearrange digits to create the largest number possible

begin

  print "Enter a number: "
  input = gets.chomp
  given_num = Integer(input)
  rescue ArgumentError

end until given_num.is_a? Integer

given_array = input.split("")

if given_array.first == "-"
    
  # Pop off the negative sign so we can deal with just the digits
  digits = given_array.drop(1).sort

  size_with_zeros = digits.size

  # We can't start a number with 0 unless the number itself equals 0.
  # Shift any leading zeros to start at position 1 in the array.
    
  digits.delete_if { |x| digits.size > 1 && x == "0" }
  
  size_without_zeros = digits.size
  num_of_zeros = size_with_zeros - size_without_zeros

  num_of_zeros.times { digits.insert(1, 0) }

  # Finally, re-add the negative sign
  largest_num = digits.unshift("-").join

else
  largest_num = given_array.sort.reverse.join

end

puts largest_num