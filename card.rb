class Card #create card with suit type and value
  attr_reader :rank, :suit
  SUITS = ['♠','♥','♦','♣']
  VALUES = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def face_card?
    ['J', 'Q', 'K'].include?(@rank)
  end

  def ace?
    ['A'].include?(@rank)
  end

end
