def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
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
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(current_sum)
  prompt_user
  turn = get_user_input

  case turn
  when "h"
    card = deal_card
    puts "you drew #{card}"
  when "s"
    card = 0
  else
    invalid_command
  end

  display_card_total(current_sum + card)
  current_sum += card
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome

  card_total = initial_round
  while card_total <= 21
    card_total = hit?(card_total)
  end

  end_game(card_total)

end
