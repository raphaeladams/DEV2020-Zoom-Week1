# ASCII Art
# Raphael Adams

def diamond_height(max_width)
  2 * max_width - 1
end

def diamond_width_at_point(max_width, dist_from_top)
  max_width - (max_width - dist_from_top).abs
end

print "Enter a number: "
num = gets.chomp.to_i

for i in 1..diamond_height(num)
  ((num - i).abs).times { print " " }
  diamond_width_at_point(num, i).times { print "* " }
  print "\n"
end