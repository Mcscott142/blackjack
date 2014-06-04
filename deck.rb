#require_relative 'card'
class Deck #build deck of 52 cards and deal cards from deck
  attr_reader :deck_of_cards

  def initialize
    @deck_of_cards =[]

    Card::SUITS.each do |suit|
      Card::VALUES.each do |value|
         @deck_of_cards << Card.new(value, suit)
       end
     end

     @deck_of_cards.shuffle!
   end

  def deal
    @deck_of_cards.pop
  end
end
