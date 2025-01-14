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
  prompt_user 
  input = get_user_input 
  if input == "h"
    card_total += deal_card 
  elsif input == "s"
    card_total 
  else
    invalid_command
    prompt_user
    get_user_input
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  total = initial_round
  #binding.pry 
  if total < 21
  
  total = hit?(total)
  display_card_total(total)
  #binding.pry 
  
end
end_game(total)
end
    
