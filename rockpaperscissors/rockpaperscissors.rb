# Rock Paper Scissors
# Raphael Adams

puts "Rock Paper Scissors"
print "Player 1 - Enter your selection: "
player_one_choice = gets.chomp.downcase

print "Player 2 - Enter your selection: "
player_two_choice = gets.chomp.downcase

choices_array = [player_one_choice, player_two_choice]

case
when (choices_array & ['rock', 'paper', 'scissors']).any? &&
    (choices_array.uniq.size <= 1)
    puts "Tie!"

when (choices_array - ['rock', 'paper']).empty?
    puts "Paper covers rock."

when (choices_array - ['rock', 'scissors']).empty?
    puts "Rock breaks scissors."

when (choices_array - ['paper', 'scissors']).empty?
    puts "Scissors cuts paper."
    
else
    puts "No cheaters! Only Rock, Paper or Scissors are allowed."
end