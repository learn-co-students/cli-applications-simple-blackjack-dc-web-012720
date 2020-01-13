require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end


def deal_card
  x = rand(1..11).round #inclusive from lower limit to upper limit
  return x
end


def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  return card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round #will this work?
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  return sum
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(current_card_total)
  # code hit? here
  
  prompt_user
  input = get_user_input
  if input == "h"
    newCard = deal_card
    new_total = newCard + current_card_total
    return new_total
  elsif input == "s"
    return current_card_total
  else
    invalid_command
    prompt_user
    return get_user_input
  end
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  while card_total < 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
