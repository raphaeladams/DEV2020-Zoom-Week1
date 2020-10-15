# Rock Paper Scissors
# Raphael Adams

rock = "rock"
paper = "paper"
scissors = "scissors"
player_one_score = 0
player_two_score = 0

puts "Rock Paper Scissors"

loop do
    print "Player 1 - Enter your selection: "
    player_one_choice = gets.chomp.downcase

    print "Player 2 - Enter your selection: "
    player_two_choice = gets.chomp.downcase

    choices_array = [player_one_choice, player_two_choice]

    case
    when (choices_array & [rock, paper, scissors]).any? && choices_array.uniq.size <= 1
        puts "Tie!"
    
    when (choices_array - [rock, paper]).empty?
        puts "Paper covers rock."
        player_one_choice == paper ? player_one_score += 1 : player_two_score += 1
    
    when (choices_array - [rock, scissors]).empty?
        puts "Rock breaks scissors."
        player_one_choice == rock ? player_one_score += 1 : player_two_score += 1

    when (choices_array - [paper, scissors]).empty?
        puts "Scissors cuts paper."
        player_one_choice == scissors ? player_one_score += 1 : player_two_score += 1

    else
        puts "No cheaters! Only Rock, Paper or Scissors are allowed."
    end

    if player_one_score >= 2
        puts "Player 1 wins."
        break
    elsif player_two_score >= 2
        puts "Player 2 wins."
        break
    end
end
