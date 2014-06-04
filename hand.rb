class Hand # calculate score of hand, hit, stay, win, push or bust
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def player_show #How do I show 1 card at a time?
    cards.each do |card|
     puts "Player Dealt: #{card.rank}#{card.suit}"
    end
  end

  def dealer_show
    cards.each do |card|
     puts "Dealer Dealt: #{card.rank}#{card.suit}"#How do I only show 1 card for the hit?
    end

  end

  def score
    PointSystem.new(cards).value
  end

  def hit(deck)
    card = deck.deal
    cards << card
    "#{card.rank}#{card.suit}"
  end

end

