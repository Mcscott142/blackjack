require_relative 'card'
require_relative 'point_system'
require_relative 'deck'
require_relative 'hand'


respone = nil

puts "Welcome to Blackjack!"


def game_start
@deck = Deck.new #can I tie this in to dealer_hand?
@player_hand = Hand.new([@deck.deal, @deck.deal])

 @player_hand.player_show
 puts "Player Score: #{@player_hand.score}"

  while @player_hand.score < 21
    print "Hit or Stand (H/S):"
    response = gets.chomp.upcase

    if response == 'H'
      @player_hand.hit(@deck)
      @player_hand.player_show
      puts "Player Score: #{@player_hand.score}"

    elsif response == 'S'
      puts "Player stays with #{@player_hand.score}"
      break
    end
  end

  if @player_hand.score == 21
    puts "Player Has 21"

  end

  if @player_hand.score > 21
    puts "Player Busts..Game Over"
  end

dealers_turn

end

def dealers_turn
  @deck
  @dealer_hand = Hand.new([@deck.deal, @deck.deal])

  @dealer_hand.dealer_show
  puts "Dealer Score: #{@dealer_hand.score}"

  while @dealer_hand.score < 17
    @dealer_hand.hit(@deck)
    @dealer_hand.dealer_show
  end

  if @dealer_hand.score >= 17 && @dealer_hand.score < 22
    puts "Dealer Stands at #{@dealer_hand.score}"
    winner?
  else
    puts "Dealer busts, Player wins!!"
  end
end

def winner?
  if @dealer_hand.score > @player_hand.score
    puts "House wins, you lose!"
  elsif @dealer_hand.score == @player_hand.score
    puts "Push"
  else
    puts "Player Wins!"
  end
end


game_start







