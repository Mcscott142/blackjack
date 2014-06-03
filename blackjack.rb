require_relative 'card'
require_relative 'point_system'
require_relative 'deck'
require_relative 'hand'


respone = nil

puts "Welcome to Blackjack!"


deck = Deck.new

player_card_1 = deck.deal
player_card_2 = deck.deal

player_hand = Hand.new([player_card_1, player_card_2])

player_hand.show
puts "Player Score: #{player_hand.score}"

  if player_hand.score == 21
    puts "Winner! Blackjack!! Way to Go!!"
  else
    player_hand.score < 21
    puts "Hit or Stand (H/S):"
    response = gets.chomp
  end


  if response == "H"
  player_hand.hit(deck.deal)

  elsif response == "S"
  puts "Your Score: #{player_hand.score}"

  else
    puts "Please respond with H or S:"
  end






# dealer_card_1 = deck.deal
# dealer_card_2 = deck.deal
#dealer_hand = Hand.new([dealer_card_1, dealer_card_2])
#puts "Dealer Score: #{dealer_hand.score}"

# if player_hand.score > dealer_hand.score
#   puts "Player wins!!"

# elsif player_hand.score == dealer_hand.score
#   puts "Push :|"

# else
#   puts "House wins :("

# end

