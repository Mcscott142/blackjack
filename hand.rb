class Hand # calculate score of hand, hit, stay, win, push or bust
  attr_reader :collection
  def initialize(collection)
    @collection = collection
  end

  def show
    collection.each do |card|
     puts "Player Dealt: #{card.rank}#{card.suit}"
    end
  end

  def score
    # add score here
    score = 0
    collection.each do |card|
     score += PointSystem.new(card).value
    end
    score
  end

  def hit(deck)
  card = deck.deal
  collection << card
  end

end

