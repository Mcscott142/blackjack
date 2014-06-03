class PointSystem
  attr_reader :card
  def initialize(card)
    @card = card
  end

  def value
    if @card.face_card?
    10

    elsif @card.rank =='A'
    11

    else
    @card.rank.to_i
    end
  end
end
