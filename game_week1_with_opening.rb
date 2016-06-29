puts "Ready to play Cubilete?"


def players_turns (players_turns)
  continue = true
  while continue
  puts "Type \"y\" or \"n\""
    response = gets.chomp
    case response
    when "y"
      continue = false
      puts "#{players_turns} roll:"
    when "n"
      abort ("Go home, no one wants you here. \nBye.")
    else
      puts "Learn how to follow directions, you fool!"
    end
  end

end


players_turns ("Player 1")


player_one_roll = []
player_two_roll = []
#Creating an empty array

  #Create a die that produces the #'s 1-6
def roll
  #Created a method
  case rand (1..6)
  when 1
    {name:"Los Negros", value: 1}
    #Assign names (by using strings in case/when scenario) to the die # roll
  when 2
    {name: "Los Gallegos", value: 2}
    #Assign ranking postion with number to the die # roll
  when 3
    {name: "Jacks", value: 3}
  when 4
    {name: "Queen", value: 4}
  when 5
    {name: "King", value: 5}
  when 6
    {name: "Ace", value: 6}
  end
  #End the case/when scenario
end
  #End the method

  5.times do
    #looping the roll of the die 5 times
    player_one_roll << roll
    player_two_roll << roll
    #sholveling the results of the roll into each array
  end


sum_of_player_one_values = []
  #create empty array to hold player one values


#player1 loop begins
player_one_roll.each do |player_one_info|
  print player_one_info[:name] + ", "
  sum_of_player_one_values << player_one_info[:value]
end
  #create a loop to print the names and values

sum_of_player_one = 0
sum_of_player_one_values.each do |num|
  sum_of_player_one += num
end
  #create a loop that adds each value in the loop


puts "\n==========="

puts "Player 2 ready?"


players_turns ("Player 2")
#calling on the players_turns method


sum_of_player_two_values = []
  #create an empty array to hold player two values

#player2 loop begins
player_two_roll.each do |player_two_info|
  print player_two_info[:name] + ", "
  sum_of_player_two_values << player_two_info[:value]
end
  #create a loop to print the names and values

sum_of_player_two = 0
sum_of_player_two_values.each do |num|
  sum_of_player_two += num
end
  #create a loop that adds each value in the loop

puts "\n==========="
  #spacer to separate player1 & player2 results

if sum_of_player_one > sum_of_player_two
  puts "Player one wins!"
elsif sum_of_player_one < sum_of_player_two
  puts "Player two wins!"
else
  puts "Tie. Roll again."
end
