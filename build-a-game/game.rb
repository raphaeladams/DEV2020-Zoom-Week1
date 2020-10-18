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

# Track whether player has guessed correctly
guessed_it = false

until num_guesses == 10 || guessed_it

  puts "You have #{ 10 - num_guesses } guesses left!"
  print "Make a guess: "
  guess = gets.to_i

  num_guesses += 1
    
  # Compare guess to target, print appropriate message
  if guess < target
    puts "Oops, your guess was LOW"
  elsif guess > target
    puts "Oops, your guess was HIGH"
  elsif guess == target
    puts "Good job #{ name }!"
    puts "You guessed my number in #{ num_guesses } guesses!"
    guessed_it = true
  end

end

# If player runs out of turns, tell them the number
if not guessed_it
  puts "Sorry, you didn't get my number... it was #{ target }."
end