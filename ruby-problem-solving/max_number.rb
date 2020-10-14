# Max Number
# Raphael Adams
# Assume we'll be working with integers. 

begin
    print "Enter a number: "
    num1 = Integer(gets.chomp)
    rescue ArgumentError
end until num1.is_a? Integer

begin
    print "Enter another number: "
    num2 = Integer(gets.chomp)
    rescue ArgumentError
end until num2.is_a? Integer

puts "Max: #{ [num1, num2].max }"