require 'pry'
require 'pp'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..1)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay" 
end

def get_user_input
  gets.chomp 
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  sum = first_card + second_card
  
  display_card_total(sum)
  sum  
  
end

def hit?(card_total)
  prompt_user #ask the user if they want to hit or stay
  user_input = get_user_input 
  #set a variable to use for your if/else statement
  if user_input == "h"
    card_total += deal_card 
    #increase your former total by the new number given by dealing another card
  elsif user_input == "s"
    card_total 
    #return the number and prompt user to hit again
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
