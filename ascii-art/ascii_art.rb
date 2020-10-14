# ASCII Art
# Raphael Adams

print "Enter a number: "
num = gets.chomp.to_i

for i in 1..num
  (num - i).times { print " " }
  i.times { print "*" }
  print "\n"
end