class Hand # calculate score of hand, hit, stay, win, push or bust
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def player_show
    cards.each do |card|
     puts "Player Dealt: #{card.rank}#{card.suit}"
    end
  end

  def dealer_show
    cards.each do |card|
     puts "Dealer Dealt: #{card.rank}#{card.suit}"
    end
  end

  def score
    PointSystem.new(cards).value
  end

  def hit(deck)
    card = deck.deal
    cards << card
  end

end

