class Card #create card with suit type and value
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def face_card?
    ['J', 'Q', 'K'].include?(@rank)
  end

  def value
    if self.face_card?
      10

     elsif self.rank =='A'
      11 #|| 1

    else
      self.rank.to_i
    end
  end
end


SUITS = ['♠','♥','♦','♣']
VALUES = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']

class Deck #build deck of 52 cards and deal cards from deck
  attr_reader :deck_of_cards

  def initialize
    @deck_of_cards =[]

    SUITS.each do |suit|
      VALUES.each do |value|
         @deck_of_cards << Card.new(value, suit)
       end
     end

     @deck_of_cards.shuffle!
   end

  def deal
    @deck_of_cards.pop
  end
end


class Hand # calculate score of hand, hit, stay, win, push or bust
  attr_reader :collection
  def initialize(collection)
    @collection = collection
  end

  def score
    # add score here
    score = 0
    collection.each do |card|
     puts card.rank
     score += card.value
    end
    score
  end
end

deck = Deck.new

card_1 = deck.deal
card_2 = deck.deal

hand = Hand.new([card_1, card_2])
puts hand.score

