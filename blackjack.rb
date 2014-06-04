require_relative 'card'
require_relative 'point_system'
require_relative 'deck'
require_relative 'hand'


respone = nil

puts "Welcome to Blackjack!"


def player_deal
deck = Deck.new
player_hand = Hand.new([deck.deal, deck.deal])

 player_hand.show
 puts "Player Score: #{player_hand.score}"

  if player_hand.score < 21
    print "Hit or Stand (H/S):"
    response = gets.chomp.upcase

    if response == 'H'
      player_hand.hit(deck)
      player_hand.show
      puts "Player Score: #{player_hand.score}"
    elsif response == 'S'
      puts "Player stays with #{player_hand.score}"

    else
      "Please respond with H or S:"
    end
  end
end


player_deal





# player_hand.show
# puts "Player Score: #{player_hand.score}"


#   #if player_hand.score == 21
#   #   puts "Winner! Blackjack!! Way to Go!!"
#   # else
#     player_hand.score < 21
#     puts "Hit or Stand (H/S):"
#     response

#     if response == "H"
#       player_hand.hit(deck)
#       player_hand.show
#       puts "Player Score: #{player_hand.score}"
#     elsif response == "S"
#     puts "Your Score: #{player_hand.score}"

#     else
#       puts "Please respond with H or S:"
#       player_deal
#     end
#   end
# end

# player_deal






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

