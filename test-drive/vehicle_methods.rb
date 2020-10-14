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

sound_horn
accelerate
use_headlights
use_headlights("high-beam")