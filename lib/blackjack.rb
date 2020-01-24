def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card_num = Random.new
  
  card_num.rand(1...12)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  
  sum
end

def hit?(card_total)
  # code hit? here
  while true do
    new_card_total = card_total
    prompt_user
    answer = get_user_input
  
    if answer == 'h'
      new_card_total += deal_card
      break
    elsif answer == 's'
      break
    else
      invalid_command
    end
  end
  
  new_card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  card_total = 0
  
  welcome
  card_total = initial_round
  until card_total > 21 do
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  
  end_game(card_total)
end
    
