computer_fingers = rand(6)
puts "how many fingers am I holding up?"
player_response = gets.chomp.to_i
puts "I had #{computer_fingers} held out!"
puts "You guessed rigth!" if player_response == computer_fingers
