class PointSystem
  attr_reader :cards
  def initialize(cards)
    @cards = cards
    #@hand = hand
  end



  def value
    running_total = 0
    @cards.sort_by!{ |x| Card::VALUES.index x}

    @cards.each do |card|
      if card.face_card?
        running_total += 10

      elsif !card.ace?
        running_total += card.rank.to_i

      #11 #unless @hand.score += 11 <= 21 then 1
      else
        if running_total + 11 > 21
          running_total += 1
        else
          running_total += 11
        end
      end
    end
    running_total
  end
end
