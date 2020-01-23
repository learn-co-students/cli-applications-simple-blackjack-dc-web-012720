require 'pry'

    def welcome
      puts "Welcome to the Blackjack Table"
    end

    def deal_card
      rand(1..11)
    end
    total = 0

    def display_card_total(total)
      total
      puts "Your cards add up to #{total}"
    end

    def prompt_user
      puts "Type 'h' to hit or 's' to stay"
    end

    def get_user_input
      gets.chomp()
    end

    def end_game(card)
      puts "Sorry, you hit #{card}. Thanks for playing!"
    end

    def initial_round
      sum = deal_card + deal_card
      
      display_card_total(sum)
      return sum
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
       hit?(card_total)
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
    while total < 21
      total = hit?(total)
      display_card_total(total)
    end
  end_game(total)
end
    
