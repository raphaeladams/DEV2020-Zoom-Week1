# Test Drive
# Raphael Adams

def accelerate
  puts "Stepping on gas"
  puts "Speeding up"
end

def sound_horn
  puts "Pressing horn button"
  puts "Beep beep!"
end

def use_headlights(brightness = "low-beam")
  puts "Turning on #{ brightness } headlights"
  puts "Watch out for deer!"
end

def mileage(miles_driven, gas_used)
  return 0 if gas_used == 0
  miles_driven / gas_used
end

sound_horn
accelerate
use_headlights
use_headlights("high-beam")

trip_mileage  = mileage(400, 12)
puts "You got #{ trip_mileage } MPG on this trip"

lifetime_mileage = mileage(11432, 366)
puts "This car averages #{ lifetime_mileage } MPG"

puts mileage(0, 0)