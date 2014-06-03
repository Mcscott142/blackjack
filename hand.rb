class Hand # calculate score of hand, hit, stay, win, push or bust
  attr_reader :collection
  def initialize(collection)
    @collection = collection
  end

  def show
    collection.each do |card|
     puts "#{card.rank}#{card.suit}"
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



  def hit()# want to pass in deck.deal to add new card
    score += PointSystem.new(card).value #card has no value yet
    end
  end

end
