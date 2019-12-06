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

def hit?(result)
  prompt_user
  input = get_user_input
  #binding.pry 
  if input == "h"
    result += deal_card
  elsif input == "s"
    result
  else 
    pp invalid_command
    pp prompt_user
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
    
