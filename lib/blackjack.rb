def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
end

def display_card_total(cardTotal)
  puts "Your cards add up to #{cardTotal}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(cardTotal)
  puts "Sorry, you hit #{cardTotal}. Thanks for playing!"
end

def initial_round
  cards = deal_card
  cards += deal_card
  display_card_total(cards)
  cards
end

def hit?(cardCount)
  prompt_user
  result = get_user_input
  if result =="s" || result == "h"
    if result == "h"
      cardCount += deal_card
    end
  else 
    invalid_command
    hit?(cardCount)
  end
  cardCount
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cardTotal = initial_round
  while cardTotal < 21 do 
    cardTotal = hit?(cardTotal)
    display_card_total(cardTotal)
  end
  end_game(cardTotal)
end
    
