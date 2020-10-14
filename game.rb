# Get My Number Game
# Raphael Adams

puts "Welcome to 'Get My Number!'"
print "What's your name? "

input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Store a random number for the player to guess
puts "I have a random number between 1-100."
puts "Can you guess it?"
target = rand(100) + 1

# Track how many guesses have been made
num_guesses = 0

puts "You have #{ 10 - num_guesses } guesses left!"
print "Make a guess: "
guess = gets.to_i

# Compare guess to target, print appropriate message
if guess < target
  puts "Oops, your guess was LOW"
elsif guess > target
  puts "Oops, your guess was HIGH"
end